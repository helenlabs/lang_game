import os
import copy
import math
import numpy as np
import torch
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

LEARNING_RATE = 1e-5

# Gamma
GAMMA_DQN = 0.1
GAMMA_BONUS = 0.5

# Training
BATCH_SIZE = 5
SEQUENCE_LENGTH = 2
TRAIN_LENGTH = 1

# Embedding
WORD_EMB_SIZE = 2
SENTENCE_EMB_SIZE = 4
LSTM_HIDDEN_SIZE = 3


'''BATCH_SIZE = 32
SEQUENCE_LENGTH = 8
TRAIN_LENGTH = 4

# Embedding
WORD_EMB_SIZE = 20
SENTENCE_EMB_SIZE = 100
LSTM_HIDDEN_SIZE = 64'''


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

        # Environment
        self.env = TextWorld_Envs(args.game, record=args.record, seed=self.seed)

        # LSTM-DRQN Model
        self.drqn = DRQN(word_dim=WORD_EMB_SIZE, sentence_dim=SENTENCE_EMB_SIZE, lstm_dim=LSTM_HIDDEN_SIZE,
                         dictionary=self.dictionary, device=device)
        self.drqn_target = DRQN(word_dim=WORD_EMB_SIZE, sentence_dim=SENTENCE_EMB_SIZE, lstm_dim=LSTM_HIDDEN_SIZE,
                         dictionary=self.dictionary, device=device)

        # Optimizer
        self.optimizer = optim.Adam(self.drqn.parameters(), lr=LEARNING_RATE)
        self.criterion_verb = nn.MSELoss()
        self.criterion_object = nn.MSELoss()

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
        # 그러나, 4step마다 batch train하는 현재 agent 구조상 finish 메소드 내부에서 모델 업데이트는 불필요하다.
        pass


    def load_latest_checkpoint(self):
        pass


    def load_checkpoint(self, checkpoint):
        pass


    def play(self):
        pass


    def train(self, train_games, dictionary, max_step=400, max_epoch=10):
        self.rng = np.random.RandomState(1234)
        epi_idx = self.replay.get_last_episode_idx()

        for epoch in range(max_epoch):
            self.rng.shuffle(train_games)
            for game in train_games:
                epi_idx += 1
                self.play_game(epoch, game, epi_idx, dictionary, max_step, train=True)


    def play_game(self, epoch, game, epi_idx, dictionary, max_step, train=True):
        game_name = os.path.basename(game)
        print('[PLAY GAME] ', game_name)
        env = textworld.start(game)

        self.reset(env)  # tells the agent a new run is starting.
        game_state = env.reset()  # Start new run.
        #print(game_state)

        total_reward = 0
        reward = 0
        done = False
        for t in range(max_step):
            command = self.random_admissible_act(game_state)  # TODO : random_admissible_act for test
            #print('>> ', command)

            next_game_state, reward, done = env.step(command)
            #print(next_game_state)
            total_reward += reward

            if train:
                self.update_dictionary(dictionary, game_state, next_game_state)
                self.replay.put(epi_idx, str(game_state), command, reward, done, str(next_game_state))

                # Every 4 steps, DRQN should learn from a new experience batch
                # 여기서, 어쩌면 이 타이밍에 배치를 생성할 때 최근 4개의 경험을 꼭 포함하도록 하면 조금 더 좋아질지도 모르겠다.
                if (t + 1) % 4 == 0:
                    self.train_batch(dictionary)

            game_state = next_game_state

            if done:
                break

        # Tell the agent the run is done.
        self.finish(game_state, reward, done)

        msg = "#{:2d}. {}:\t {:3d} steps; score: {:2d}"
        msg = msg.format(epoch, game_name, game_state.nb_moves, total_reward)
        print(msg)
        env.close()


    def copy_to_target(self):
        state_dict = copy.deepcopy(self.drqn.state_dict())
        self.drqn_target.load_state_dict(state_dict)
        #self.drqn_target.load_state_dict(self.drqn.state_dict())   # 이렇게 짜면 self.drqn과 self.drqn_target이 파라미터를 공유하잖다!!!
        #self.drqn_target = copy.deepcopy(self.drqn)   # 이렇게 구현해도 된다고..
        #self.drqn_target.to(self.device)


    def train_batch(self, dictionary):
        self.copy_to_target()  # copy drqn to target..

        if(not self.replay.is_available(BATCH_SIZE)):
            return

        batch = self.replay.sample(BATCH_SIZE, sequence_length=SEQUENCE_LENGTH, prioritize_sample=True)

        next_hidden_state, next_cell_state \
            = self.drqn.init_states(BATCH_SIZE, LSTM_HIDDEN_SIZE)
        next_hidden_state_target, next_cell_state_target \
            = self.drqn_target.init_states(BATCH_SIZE, LSTM_HIDDEN_SIZE)

        def go_dqrn_one_step(batch, idx, next_hidden_state, next_cell_state, next_hidden_state_target, next_cell_state_target):
            state_seq = [transition_seq[idx].observation + ' ' + transition_seq[idx].action for transition_seq in batch]
            next_state_seq = [transition_seq[idx].next_observation for transition_seq in batch]

            X, X_len = dictionary.sentence_to_lookup_tensor(state_seq, self.device)
            X_next, X_next_len = dictionary.sentence_to_lookup_tensor(next_state_seq, self.device)

            q_verb_values, q_object_values, next_hidden_state, next_cell_state \
                = self.drqn(X, X_len, next_hidden_state, next_cell_state)
            q_verb_values_target, q_object_values_target, next_hidden_state_target, next_cell_state_target \
                = self.drqn_target(X_next, X_next_len, next_hidden_state_target, next_cell_state_target)

            return q_verb_values, q_object_values, next_hidden_state, next_cell_state, \
                   q_verb_values_target, q_object_values_target, next_hidden_state_target, next_cell_state_target

        train_start = False
        for idx in range(SEQUENCE_LENGTH):  # SEQUENCE_LENGTH = 8
            # 길이 8의 transition_seq 중에서 앞부분 길이 4만큼은 모델 업데이트에 활용하지 않는다. (Lample & Chaplot, 2016)
            if idx < SEQUENCE_LENGTH - TRAIN_LENGTH:  # if idx < 8 - 4
                with torch.no_grad():
                    _, _, next_hidden_state, next_cell_state, \
                    _, _, next_hidden_state_target, next_cell_state_target \
                        = go_dqrn_one_step(batch, idx, next_hidden_state, next_cell_state,
                                       next_hidden_state_target, next_cell_state_target)
            # 5번째 sequence부터 트레이닝에 활용된다.
            else:
                with torch.enable_grad():
                    self.optimizer.zero_grad()
                    #self.drqn_target.requires_grad(False)
                    # 심플한 가정 : action의 첫번째 단어가 verb, 두번째 단어가 object라고 가정하자.
                    # 이 가정은 action이 게임 내 선택가능한 답안(game_state.admissible_commands)에서 선택된 경우에는 맞지 않는다.
                    # DRQN이 선택한 action만이 replay memory에 등록될 때만 적용 가능한 가정이다.

                    # bugfix : object의 index2action 을 가져올 때는 신중해야 한다. action이 1단어짜리일 수도 있다.
                    act_verb_idx_seq = [dictionary.get_action_idx_from_word(transition_seq[idx].action.split()[0])
                                        for transition_seq in batch]
                    act_object_idx_seq = [dictionary.get_action_idx_from_word(transition_seq[idx].action.split()[1])
                                          if len(transition_seq[idx].action.split()) > 1 else 0
                                          for transition_seq in batch]
                    #print(act_verb_idx_seq)
                    #print(act_object_idx_seq)

                    #index2action을 통해 얻어진 action index를 one-hot vector 형태로 치환..
                    labels_verb = torch.LongTensor(act_verb_idx_seq).unsqueeze(1).to(self.device)
                    labels_verb_one_hot = torch.FloatTensor(BATCH_SIZE, dictionary.action_size()).zero_().to(self.device)
                    labels_verb_one_hot.scatter_(1, labels_verb, 1)
                    #print(labels_verb_one_hot)

                    labels_object = torch.LongTensor(act_object_idx_seq).unsqueeze(1).to(self.device)
                    labels_object_one_hot = torch.FloatTensor(BATCH_SIZE, dictionary.action_size()).zero_().to(self.device)
                    labels_object_one_hot.scatter_(1, labels_object, 1)
                    #print(labels_object_one_hot)

                    # 여기까지는 q_values가 각 action별 리스트 형태
                    q_verb_values, q_object_values, next_hidden_state, next_cell_state, \
                    q_verb_values_target, q_object_values_target, next_hidden_state_target, next_cell_state_target \
                        = go_dqrn_one_step(batch, idx, next_hidden_state, next_cell_state,
                                           next_hidden_state_target, next_cell_state_target)

                    #print(q_verb_values)
                    #print(q_object_values)
                    #print(q_verb_values_target)
                    #print(q_object_values_target)

                    # 여기서부터는 q_value가 특정 action에 대한 단일값 형태
                    q_verb_value = torch.mul(q_verb_values, labels_verb_one_hot).sum(1)
                    q_object_value = torch.mul(q_object_values, labels_object_one_hot).sum(1)
                    q_verb_value_target, _ = q_verb_values_target.max(1)
                    q_object_value_target, _ = q_object_values_target.max(1)

                    reward_seq = torch.Tensor([transition_seq[idx].reward for transition_seq in batch]).to(self.device)
                    done_seq = torch.Tensor([0 if transition_seq[idx].done else 1 for transition_seq in batch]).to(self.device)

                    output1 = q_verb_value
                    target1 = reward_seq + GAMMA_DQN * torch.mul(q_verb_value_target, done_seq)
                    target1.detach_()
                    output2 = q_object_value
                    target2 = reward_seq + GAMMA_DQN * torch.mul(q_object_value_target, done_seq)
                    target2.detach_()

                    loss1 = self.criterion_verb(output1, target1)
                    loss2 = self.criterion_verb(output2, target2)
                    loss = loss1 + loss2


                    #output = q_verb_value + q_object_value
                    #q_target = q_verb_value_target + q_object_value_target
                    #target = reward_seq + GAMMA_DQN*torch.mul(q_target,done_seq)
                    #target.detach_()
                    #loss = self.criterion(output, target)
                    print('########## LOSS ##############')
                    '''print(q_verb_value)
                    print(q_object_value)
                    print(reward_seq)
                    print(done_seq)
                    print(q_verb_values_target)
                    print(output1)
                    print(target1)
                    print(self.dictionary.action2word)'''
                    #print(self.drqn.state_dict())
                    #print(self.drqn_target.state_dict())
                    #print(output)
                    #print(target)
                    #for name, param in self.drqn.named_parameters():
                    #    print(name)
                    #    print(param)
                    #print(self.drqn.sentence_representer.word_embedding.state_dict())
                    print(loss)
                    loss.backward(retain_graph=True)
                    self.optimizer.step()
                    #print('>>>>>>>>>>after optimizer step')
                    #print(self.drqn.state_dict())
                    #print(self.drqn_target.state_dict())
                    '''print(q_verb_value)
                    print(q_object_value)
                    print(output)
                    print(target)
                    print(q_verb_values)
                    print(q_object_values)
                    print(q_verb_values_target)
                    print(q_object_values_target)'''


    # dictionary는 이 메소드 안에서만 확장되어야 한다.
    def update_dictionary(self, dictionary, game_state, next_game_state):
        dictionary.add_sentence(str(game_state))
        dictionary.add_sentence(str(next_game_state))
        for sentence in game_state.admissible_commands:
            dictionary.add_sentence(sentence, action=True)

        self.drqn.sentence_representer.extend_embedding()
        self.drqn.extend_q_actions()
        self.drqn_target.sentence_representer.extend_embedding()
        self.drqn_target.extend_q_actions()
