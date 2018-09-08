import os
import copy
import numpy as np
from torch import nn, optim, device

import textworld
from envs.textworld.textworld_envs import TextWorld_Envs
from models.dqn.drqn import DRQN
from utils.dqn.replay_memory import ReplayMemory

# Replay Memory
MAX_REPLAY_MEMORY = 500000

# Epsilon
EPSILON_START = 1.0
EPSILON_END = 0.2
EPSILON_DECAY = 1000

LEARNING_RATE = 1e-3

# Training
BATCH_SIZE = 5#32
SEQUENCE_LENGTH = 3#8

# Embedding
WORD_EMB_SIZE = 2#20
SENTENCE_EMB_SIZE = 6#100
LSTM_HIDDEN_SIZE = 4#64

#MAX_STEP=400
#MAX_EPOCH=10


class TextworldAgent(textworld.Agent):
    def __init__(self, args, dictionary, device=device("cuda")):
        # Init
        self.clip = args.clip
        self.seed = args.seed
        self.step = 0
        self.best_score = args.best or -10000
        self.best_count = 0
        self.dictionary = dictionary
        self.device = device

        #self._play_steps = deque(maxlen=5)

        # Environment
        self.env = TextWorld_Envs(args.game, record=args.record, seed=self.seed)

        # LSTM-DRQN Model
        self.drqn = DRQN(word_dim=WORD_EMB_SIZE, sentence_dim=SENTENCE_EMB_SIZE, lstm_dim=LSTM_HIDDEN_SIZE,
                         dictionary=self.dictionary, device=device)
        self.drqn_target = DRQN(word_dim=WORD_EMB_SIZE, sentence_dim=SENTENCE_EMB_SIZE, lstm_dim=LSTM_HIDDEN_SIZE,
                         dictionary=self.dictionary, device=device)
        # DQN Target Model
        #self.drqn_target = copy.deepcopy(self.drqn).to(device)
        #self.drqn_target = DRQN(word_dim=WORD_EMB_SIZE, sentence_dim=SENTENCE_EMB_SIZE, lstm_dim=LSTM_HIDDEN_SIZE,
        #                 dictionary=self.dictionary, device=device)


        '''# DQN Model
        self.dqn_hidden_state = self.dqn_cell_state = None
        self.target_hidden_state = self.target_cell_state = None

        #self.mode = args.model.lower()
        #if self.mode == 'dqn':
        #    self.dqn: DQN = DQN(self.env.action_space)
        #elif self.mode == 'lstm':

        self.dqn = DRQN().to(device)

        # For Optimization
        self.dqn_hidden_state, self.dqn_cell_state = self.dqn.init_states()
        self.target_hidden_state, self.target_cell_state = self.dqn.init_states()

        # For Training Play
        self.train_hidden_state, self.train_cell_state = self.dqn.init_states()

        # For Validation Play
        self.test_hidden_state, self.test_cell_state = self.dqn.init_states()

        self.dqn.to(device)

        # DQN Target Model
        self.target = copy.deepcopy(self.dqn)
'''
        # Optimizer
        self.optimizer = optim.Adam(self.drqn.parameters(), lr=LEARNING_RATE)

        # Replay Memory
        self.replay = ReplayMemory(MAX_REPLAY_MEMORY)

        # Epsilon
        self.epsilon = EPSILON_START


    def reset(self, env):
        # For the purpose of this tutorial we need the two lines below.
        env.activate_state_tracking()  # Needed to get the admissible commands.
        env.compute_intermediate_reward()  # Needed to detect if a game is lost and to get intermediate reward.


    def act(self, game_state, reward, done):
        # Given the current game_state return the next text command.
        # Perfom inference. *Do not update model's parameters.*
        return game_state.admissible_commands[0]


    def random_admissible_act(self, game_state):
        return self.rng.choice(game_state.admissible_commands)
        '''num_policy = game_state.admissible_commands
        choice = np.random.randint(num_policy)
        return game_state.admissible_commands[choice]'''


    def finish(self, game_state, reward, done):
        # The game has finished. If done is True, agent won/lost the game; otherwise step limit was reached.
        # This is where you should *update your model's parameters*.
        pass


    def load_latest_checkpoint(self):
        pass


    def load_checkpoint(self, checkpoint):
        pass


    def play(self):
        pass


    '''def get_initial_states(self):
        state = self.env.reset()

        self._state_buffer = deque(maxlen=self.action_repeat)
        for _ in range(self.action_repeat):
            self._state_buffer.append(state)
        return states'''


    def train(self, train_games, dictionary, max_step=400, max_epoch=10):
        # Initial States
        #reward_sum = 0.
        #q_mean = [0., 0.]
        #target_mean = [0., 0.]

        self.rng = np.random.RandomState(1234)
        epi_idx = self.replay.get_last_episode_idx()

        for epoch in range(max_epoch):
            self.rng.shuffle(train_games)
            for game in train_games:
                epi_idx += 1
                self.play_game(epoch, game, epi_idx, dictionary, max_step, train=True)


    def play_game(self, epoch, game, epi_idx, dictionary, max_step, train=True):
        # game = './../data/textworld/games/customs/obj_10_qlen_3_room_2/game_1.ulx'
        game_name = os.path.basename(game)
        print('[PLAY GAME] ', game_name)
        env = textworld.start(game)

        self.reset(env)  # tells the agent a new run is starting.
        game_state = env.reset()  # Start new run.
        print(game_state)

        total_reward = 0
        reward = 0
        done = False
        for t in range(max_step):
            self.update_dictionary(dictionary, game_state)
            print('dictionary words: ', dictionary.dictionary_size())
            print('dictionary actions: ', dictionary.action_size())

            command = self.random_admissible_act(game_state)  # TODO : random_admissible_act for test
            print('>> ', command)

            next_game_state, reward, done = env.step(command)
            print(next_game_state)
            total_reward += reward

            self.replay.put(epi_idx, str(game_state), command, reward, done, str(next_game_state))
            game_state = next_game_state

            # Every 4 steps, DRQN should learn from a new experience batch
            # 여기서, 어쩌면 이 타이밍에 배치를 생성할 때 최근 4개의 경험을 꼭 포함하도록 하면 더 좋아질지도 모르겠다.
            if (t + 1) % 4 == 0:
                self.train_batch(dictionary)

            if done:
                break

        # Tell the agent the run is done.
        self.finish(game_state, reward, done)

        msg = "#{:2d}. {}:\t {:3d} steps; score: {:2d}"
        msg = msg.format(epoch, game_name, game_state.nb_moves, total_reward)
        print(msg)
        env.close()

    def copy_to_target(self):
        #print(self.drqn.state_dict())
        '''for key in self.drqn.state_dict.keys():
            print(key)
            print(self.drqn.state_dict[key])'''
        self.drqn_target.load_state_dict(self.drqn.state_dict())
        #del self.drqn_target
        #self.drqn_target = copy.deepcopy(self.drqn)

    def train_batch(self, dictionary):
        #self.drqn_target = copy.deepcopy(self.drqn)#.to(device)
        self.copy_to_target()
        if(not self.replay.is_available(BATCH_SIZE)):
            return

        batch = self.replay.sample(BATCH_SIZE, sequence_length=SEQUENCE_LENGTH, prioritize_sample=False)
        '''for transition_seq in batch:
            print('==================================')
            for transition in transition_seq:
                print('-------------------')
                print(transition.episode)
                print(transition.observation)
                print(transition.action)'''

        next_hidden_state, next_cell_state = self.drqn.init_states(BATCH_SIZE, LSTM_HIDDEN_SIZE)
        next_hidden_state_target, next_cell_state_target = self.drqn_target.init_states(BATCH_SIZE, LSTM_HIDDEN_SIZE)

        for idx in range(SEQUENCE_LENGTH):
            state_seq = [transition_seq[idx].observation + ' ' + transition_seq[idx].action for transition_seq in batch]
            next_state_seq = [transition_seq[idx].next_observation for transition_seq in batch]
            reward_seq = [transition_seq[idx].reward for transition_seq in batch]
            done_seq = [transition_seq[idx].done for transition_seq in batch]
            #print('SEQUENCE=', idx)
            #for sentence in sen_seq:
            #    print(sentence)

            X, X_len = dictionary.sentence_to_lookup_tensor(state_seq, self.device)
            X_next, X_next_len = dictionary.sentence_to_lookup_tensor(next_state_seq, self.device)
            #print(X)
            #print(X_len)
            q_verb_val, q_object_val, next_hidden_state, next_cell_state = self.drqn(X, X_len, next_hidden_state,
                                                                                next_cell_state)
            q_verb_val_target, q_object_val_target, next_hidden_state_target, next_cell_state_target = self.drqn_target(X_next, X_next_len, next_hidden_state,
                                                                                     next_cell_state)
            print('########## Q_VALS ##############')
            print(q_verb_val)
            print(q_object_val)
            print(q_verb_val_target)
            print(q_object_val_target)

        '''next_hidden_state, next_cell_state = self.init_states(BATCH_SIZE, LSTM_HIDDEN_SIZE)
            
        for idx in range(4):
            state_seq = [transition_seq[idx].observation + ' ' + transition_seq[idx].action for transition_seq in batch]
            next_state_seq = [transition_seq[idx].next_observation for transition_seq in batch]
            reward_seq = [transition_seq[idx].reward for transition_seq in batch]
            done_seq = [transition_seq[idx].done for transition_seq in batch]
            #print('SEQUENCE=', idx)
            #for sentence in sen_seq:
            #    print(sentence)

            X, X_len = dictionary.sentence_to_lookup_tensor(state_seq, device)
            X_next, X_next_len = dictionary.sentence_to_lookup_tensor(next_state_seq, device)
            #print(X)
            #print(X_len)
            q_verb_val, q_object_val, next_hidden_state, next_cell_state = self.drqn(X, X_len, next_hidden_state,
                                                                                next_cell_state)
            print('########## Q_VALS ##############')
            print(q_verb_val)
            print(q_object_val)'''


    def update_dictionary(self, dictionary, game_state):
        dictionary.add_sentence(str(game_state))
        for sentence in game_state.admissible_commands:
            dictionary.add_sentence(sentence, action=True)

        self.drqn.sentence_representer.extend_embedding()
        self.drqn.extend_q_actions()
        self.drqn_target.sentence_representer.extend_embedding()
        self.drqn_target.extend_q_actions()


    '''def optimize(self, gamma):
        if self.mode == 'lstm':
            # For Optimization
            self.dqn_hidden_state, self.dqn_cell_state = self.drqn.reset_states(self.dqn_hidden_state,
                                                                               self.dqn_cell_state)
            self.target_hidden_state, self.target_cell_state = self.drqn.reset_states(self.target_hidden_state,
                                                                                     self.target_cell_state)

        # Get Sample
        transitions = self.replay.sample(BATCH_SIZE)

        # Mask
        non_final_mask = torch.ByteTensor(list(map(lambda ns: ns is not None, transitions.next_state))).cuda()
        final_mask = 1 - non_final_mask

        state_batch: Variable = Variable(torch.cat(transitions.state).cuda())
        action_batch: Variable = Variable(torch.cat(transitions.action).cuda())
        reward_batch: Variable = Variable(torch.cat(transitions.reward).cuda())
        non_final_next_state_batch = Variable(torch.cat([ns for ns in transitions.next_state if ns is not None]).cuda())
        non_final_next_state_batch.volatile = True

        # Reshape States and Next States
        state_batch = state_batch.view([BATCH_SIZE, self.action_repeat, self.env.width, self.env.height])
        non_final_next_state_batch = non_final_next_state_batch.view(
            [-1, self.action_repeat, self.env.width, self.env.height])
        non_final_next_state_batch.volatile = True

        # Clipping Reward between -2 and 2
        reward_batch.data.clamp_(-1, 1)

        # Predict by DQN Model
        if self.mode == 'dqn':
            q_pred = self.dqn(state_batch)
        elif self.mode == 'lstm':
            q_pred, self.dqn_hidden_state, self.dqn_cell_state = self.dqn(state_batch, self.dqn_hidden_state,
                                                                          self.dqn_cell_state)

        q_values = q_pred.gather(1, action_batch)

        # Predict by Target Model
        target_values = Variable(torch.zeros(BATCH_SIZE, 1).cuda())
        if self.mode == 'dqn':
            target_pred = self.target(non_final_next_state_batch)
        elif self.mode == 'lstm':
            target_pred, self.target_hidden_state, self.target_cell_state = self.target(non_final_next_state_batch,
                                                                                        self.target_hidden_state,
                                                                                        self.target_cell_state)

        target_values[non_final_mask] = reward_batch[non_final_mask] + target_pred.max(1)[0] * gamma
        target_values[final_mask] = reward_batch[final_mask].detach()

        loss = F.smooth_l1_loss(q_values, target_values)

        # loss = torch.mean((target_values - q_values) ** 2)
        self.optimizer.zero_grad()
        loss.backward(retain_variables=True)

        if self.clip:
            for param in self.dqn.parameters():
                param.grad.data.clamp_(-1, 1)
        self.optimizer.step()

        reward_score = int(torch.sum(reward_batch).data.cpu().numpy()[0])
        q_mean = torch.sum(q_pred, 0).data.cpu().numpy()[0]
        target_mean = torch.sum(target_pred, 0).data.cpu().numpy()[0]

        return loss.data.cpu().numpy(), reward_score, q_mean, target_mean'''









'''# Init LSTM States
#if self.mode == 'lstm':
    # For Training
self.train_hidden_state, self.train_cell_state = self.dqn.reset_states(self.train_hidden_state,
                                                                           self.train_cell_state)

states = self.get_initial_states()'''
'''losses = []
checkpoint_flag = False
target_update_flag = False
play_flag = False
play_steps = 0
real_play_count = 0
real_score = 0

reward = 0
done = False
while True:
    # Get Action
    action = self.select_action(states)

    for _ in range(self.frame_skipping):
        # step 에서 나온 observation은 버림
        observation, reward, done, info = self.env.step(action[0, 0])
        next_state = self.env.get_screen()
        self.add_state(next_state)

        if done:
            break

    # Store the infomation in Replay Memory
    next_states = self.recent_states()
    if done:
        self.replay.put(states, action, reward, None)
    else:
        self.replay.put(states, action, reward, next_states)

    # Change States
    states = next_states

    # Optimize
    if self.replay.is_available():
        loss, reward_sum, q_mean, target_mean = self.optimize(gamma)
        losses.append(loss[0])

    if done:
        break

    # Increase step
    self.step += 1
    play_steps += 1

    # Target Update
    if self.step % TARGET_UPDATE_INTERVAL == 0:
        self._target_update()
        target_update_flag = True

    # Checkpoint
    # if self.step % CHECKPOINT_INTERVAL == 0:
    #     self.save_checkpoint(filename=f'dqn_checkpoints/chkpoint_{self.mode}_{self.step}.pth.tar')
    #     checkpoint_flag = True

    # Play
    if self.step % PLAY_INTERVAL == 0:
        play_flag = True

        scores = []
        counts = []
        for _ in range(PLAY_REPEAT):
            score, real_play_count = self.play(logging=False, human=False)
            scores.append(score)
            counts.append(real_play_count)
            logger.debug(f'[{self.step}] [Validation] play_score: {score}, play_count: {real_play_count}')
        real_score = int(np.mean(scores))
        real_play_count = int(np.mean(counts))

        if self.best_score <= real_score:
            self.best_score = real_score
            self.best_count = real_play_count
            logger.debug(f'[{self.step}] [CheckPoint] Play: {self.best_score} [Best Play] [checkpoint]')
            self.save_checkpoint(
                filename=f'dqn_checkpoints/chkpoint_{self.mode}_{self.best_score}.pth.tar')

self._play_steps.append(play_steps)

# Play
if play_flag:
    play_flag = False
    logger.info(f'[{self.step}] [Validation] mean_score: {real_score}, mean_play_count: {real_play_count}')

# Logging
mean_loss = np.mean(losses)
target_update_msg = '  [target updated]' if target_update_flag else ''
# save_msg = '  [checkpoint!]' if checkpoint_flag else ''
logger.info(f'[{self.step}] Loss:{mean_loss:<8.4} Play:{play_steps:<3}  '  # AvgPlay:{self.play_step:<4.3}
            f'RewardSum:{reward_sum:<3} Q:[{q_mean[0]:<6.4}, {q_mean[1]:<6.4}] '
            f'T:[{target_mean[0]:<6.4}, {target_mean[1]:<6.4}] '
            f'Epsilon:{self.epsilon:<6.4}{target_update_msg}')'''