from collections import namedtuple, deque, OrderedDict
from random import sample as randomsample
import math
import torch

Transition = namedtuple('Transition',
                        ('episode', 'observation', 'action', 'reward', 'done', 'next_observation'))


class ReplayMemory(object):
    def __init__(self, capacity):
        self.capacity = capacity
        self.memory = OrderedDict()
        #self.sampling_index = OrderedDict()
        #self.sampling_index = OrderedDict()
        self.sampling_indexes = []
        self.prioritized_indexes = []
        self.Transition = Transition
        self._available = False
        self._last_idx = 0
        self._cur_episode = 0
        self._cur_episode_start_idx = 0


    def put(self, episode, observation, action, reward, done, next_observation):
        # 이 메소드는 multi-thread safe하지 않다. multi-thread-safe를 보장하려면 이 메소드가 atomic해야 한다.

        transition = self.Transition(episode=episode, observation=observation, action=action, reward=reward, done=done, next_observation=next_observation)
        self._last_idx = self._last_idx + 1
        self.memory[self._last_idx] = transition

        if episode > self._cur_episode:
            self._cur_episode = episode
            self._cur_episode_start_idx = self._last_idx

        # episode 시작 후 8번째 transition부터 샘플링할 수 있다.
        # 트레이닝 배치는 8개의 연속된 transition을 묶어서 생성되기 때문이다.
        if self._last_idx >= self._cur_episode_start_idx + 7:
            self.sampling_indexes.append(self._last_idx)
            if transition.reward > 0:
                self.prioritized_indexes.append(self._last_idx)

        if len(self.memory) > self.capacity:
            self.pop_overflow_memory()


    def pop_overflow_memory(self):
        idx, _ = self.memory.popitem(False)   # FIFO delete
        if idx + 7 in self.sampling_indexes:
            self.sampling_indexes.remove(idx + 7)
        if idx + 7 in self.prioritized_indexes:
            self.prioritized_indexes.remove(idx + 7)


    def get_last_episode_idx(self):
        if self.size() <= 0:
            return 0
        return next(reversed(self.memory.values()))['episode']


    def sample(self, batch_size, sequence_length = 8, prioritize_sample=True, priority_ratio=0.25):
        def get_N_transition_sequence(memory, sample_idx, N):
            return [memory[sample_idx - N + 1 + idx] for idx in range(N)]

        if prioritize_sample:
            prior_batch_size = math.floor(batch_size * priority_ratio)
            if prior_batch_size > len(self.prioritized_indexes):
                prior_batch_size = len(self.prioritized_indexes)
            prior_key_list = randomsample(self.prioritized_indexes, prior_batch_size)
            remain_key_list = randomsample(list(set(self.sampling_indexes)-set(prior_key_list)), (batch_size-prior_batch_size))
            sample_key_list = prior_key_list+remain_key_list
            return [get_N_transition_sequence(self.memory, k, sequence_length) for k in sample_key_list]
        else:
            return [get_N_transition_sequence(self.memory, k, sequence_length) for k in randomsample(self.sampling_indexes, batch_size)]


    def size(self):
        return len(self.memory)


    def is_available(self, batch_size):
        if self._available:
            return True

        if len(self.sampling_indexes) > batch_size:
            self._available = True
        return self._available