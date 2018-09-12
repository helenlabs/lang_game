import numpy as np
import torch
from torch import nn
from string import punctuation


class Dictionary:
    def __init__(self, name):
        self.name = name
        self.word2index = {}
        self.word2count = {}
        self.index2word = {0: "PAD", 1: "UNK"}
        self.n_words = 2

        # Dictionary에서 DRQN의 action으로 사용될 수 있는 word만 별도로 관리해 준다.
        # 이렇게 하는 것이 action-space 사이즈를 줄여 훈련 속도를 빠르게 할 수 있을 것으로 기대된다.
        self.index2action = {0: 0}
        self.action2word = {0: ""}
        self.n_actions = 1


    def add_sentence(self, sentence, action=False):
        # 영어문장 전처리 : 줄바꿈 제거, 소문자화, 특수문자 제거
        # TODO : 이 전처리는 일반적이지 않을 수 있으니 차후 변경 검토할 것.
        sentence = self.strip_punctuation(sentence.lower())

        for word in sentence.split(' '):
            word_index = self.add_word(word)
            if action:
                self.add_action(word_index, word)
        return self.n_words


    def add_word(self, word):
        if word not in self.word2index:
            self.word2index[word] = self.n_words
            self.word2count[word] = 1
            self.index2word[self.n_words] = word
            self.n_words += 1
        else:
            self.word2count[word] += 1

        return self.word2index[word]


    def add_action(self, word_index, word):
        if word_index not in self.index2action:
            self.index2action[word_index] = self.n_actions
            self.action2word[self.n_actions] = word
            self.n_actions += 1


    # input : sentence list
    # output : dictionary lookup tensor
    def sentence_to_lookup_tensor(self, X, device):
        # 영어문장 전처리 : 줄바꿈 제거, 소문자화, 특수문자 제거
        # TODO : 이 전처리는 일반적이지 않을 수 있으니 차후 변경 검토할 것.
        X = [self.strip_punctuation(x.lower()).split() for x in X]

        for sentence in X:
            for word in sentence:
                if word not in self.word2index:
                    print('########### UNKNOWN WORD ASSERT !! ############')
                    print('sentence :', sentence)
                    print('word : ', word)
                    print(X)
                    assert(False)

        X = [[self.word2index[word] for word in sentence] for sentence in X]

        # zero padding -> batch X에 포함된 sentence들의 길이가 각각 다르므로,
        # 일단은 zero padding을 거쳐 동일한 길이로 만들어 lookup tensor를 생성한다.
        X_len = [len(word_seq) for word_seq in X]
        X_seq_len = max(X_len)
        X = [[0 if idx >= len(word_seq) else word_seq[idx] for idx in range(X_seq_len)] for word_seq in X]

        return torch.from_numpy(np.array(X)).to(device), torch.from_numpy(np.array(X_len)).to(device)


    def dictionary_size(self):
        return self.n_words


    def action_size(self):
        return self.n_actions


    def strip_punctuation(self, s):
        return ''.join(c for c in s if c not in punctuation and c != '\n')  # 줄바꿈도 여기서 제거


    def get_action_idx_from_word(self, word):
        idx = self.word2index[self.strip_punctuation(word.lower())]
        if idx in self.index2action:
            return self.index2action[idx]
        else:
            return 0  # 예외적인 상황..






