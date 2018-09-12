import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.nn.utils.rnn import pack_padded_sequence, pad_packed_sequence
from torch.autograd import Variable


class WordEmbedding(nn.Module):
    def __init__(self, num_embeddings, embedding_dim, device):
        super(WordEmbedding, self).__init__()
        self.num_embeddings = num_embeddings
        self.embedding_dim = embedding_dim
        self.device = device
        self.embedding = nn.Embedding(self.num_embeddings, self.embedding_dim, padding_idx=0).to(self.device)

    # input X : dictionary lookup tensor
    # X = dictionary.sentence_to_lookup_tensor(X)
    # X_emb = word_embedding(X)
    def forward(self, X):
        return self.embedding(X)

    # dictionary가 추가되었을 때 이를 반영하여 nn.Embedding을 재생성한다. 이때,기존에 학습된 임베딩 파라미터값은 보존해 준다.
    def extend_embedding(self, num_embeddings):
        ori_weight = self.embedding.state_dict()['weight']
        ori_num_embeddings = self.num_embeddings
        new_num_embeddings = num_embeddings

        new_weight = nn.Parameter(torch.Tensor(new_num_embeddings, self.embedding_dim))
        new_weight.data.normal_(0, 1)
        new_weight[:ori_num_embeddings, :] = ori_weight   # 기존에 학습된 임베딩 파라미터값은 보존해 준다.

        del self.embedding   # 사용했던 이전의 embedding은 지워주자.

        self.num_embeddings = num_embeddings
        self.embedding = nn.Embedding(self.num_embeddings, self.embedding_dim, padding_idx=0).to(self.device)
        self.embedding.load_state_dict({'weight':new_weight})


class LSTM_Representer(nn.Module):

    def __init__(self, input_dim, output_dim, dictionary, device, layer_num=1):   #
        super(LSTM_Representer, self).__init__()
        self.lstm = nn.LSTM(input_dim, output_dim, layer_num).to(device)  # (Input, Hidden, Num Layers)
        self.num_embedding = dictionary.dictionary_size()
        self.dictionary = dictionary
        self.output_dim = output_dim
        self.word_embedding = WordEmbedding(self.num_embedding, input_dim, device)

    def forward(self, X, X_len):#, hidden_state, cell_state):
        seq_lengths, perm_idx = X_len.sort(0, descending=True)
        seq_tensor = X[perm_idx]
        seq_tensor = seq_tensor.transpose(0, 1)
        seq_tensor = self.word_embedding(seq_tensor)
        packed_input = pack_padded_sequence(seq_tensor, seq_lengths.cpu().numpy())
        packed_output, _ = self.lstm(packed_input)
        output, _ = pad_packed_sequence(packed_output)
        _, reverse_perm_idx = perm_idx.sort(0, descending=False)
        output = output.transpose(0, 1)
        output = output[reverse_perm_idx]
        output = output.transpose(0, 1)

        # for mean pool
        output = torch.sum(output, dim=0)
        X_len_tensor = X_len.reshape(-1, 1).float()
        X_len_tensor = X_len_tensor.repeat(1, self.output_dim)
        output = output/X_len_tensor
        #output = F.relu(output)   # pipaek : relu가 필요한지 모르겠다. 이거 포함해서 한번 돌려봤음 좋겠다.

        return output

    # 만약 새로운 단어가 추가된 경우가 발견되었다면, embedding 모듈 동적 확장
    def extend_embedding(self):
        if self.dictionary.dictionary_size() > self.num_embedding:
            self.word_embedding.extend_embedding(self.dictionary.dictionary_size())
            self.num_embedding = self.dictionary.dictionary_size()


class DRQN(nn.Module):

    def __init__(self, word_dim, sentence_dim, lstm_dim, dictionary, device, layer_num=1):   #
        super(DRQN, self).__init__()
        self.device = device
        self.sentence_dim = sentence_dim
        self.lstm_dim = lstm_dim
        self.layer_num = layer_num
        self.dictionary = dictionary
        self.num_actions = dictionary.action_size()
        self.sentence_representer = LSTM_Representer(word_dim, sentence_dim, dictionary, device)
        self.lstm = nn.LSTM(sentence_dim, lstm_dim, layer_num).to(device)  # (Input, Hidden, Num Layers)
        self.n_actions = dictionary.action_size()
        self.q_verb = nn.Linear(lstm_dim, self.n_actions).to(device)
        self.q_object = nn.Linear(lstm_dim, self.n_actions).to(device)
        self.hidden_state = None
        self.cell_state = None
        self.device = device


    def init_states(self, batch_size, lstm_dim):
        hidden_state = Variable(torch.zeros(self.layer_num, batch_size, lstm_dim).to(self.device))
        cell_state = Variable(torch.zeros(self.layer_num, batch_size, lstm_dim).to(self.device))
        return hidden_state, cell_state


    def forward(self, x, x_len, hidden_state, cell_state):
        sentence_representations = self.sentence_representer(x, x_len)
        sentence_representations = sentence_representations.view(self.layer_num, x.size(0), -1)
        # LSTM
        h, (next_hidden_state, next_cell_state) = self.lstm(sentence_representations, (hidden_state, cell_state))
        h = h.view(x.size(0), -1)

        # Q-functions
        q_verb_val = self.q_verb(h)
        q_object_val = self.q_object(h)

        return q_verb_val, q_object_val, next_hidden_state, next_cell_state


    # 만약 새로운 단어가 추가된 경우가 발견되었다면, embedding 모듈 동적 확장
    # action word가 추가되었을 때 이를 반영하여 q_func을 재생성한다. 이때,기존에 학습된 파라미터값은 보존해 준다.
    def extend_q_actions(self):
        if self.dictionary.action_size() > self.num_actions:
            ori_q_verb_weight = self.q_verb.state_dict()['weight']
            ori_q_verb_bias = self.q_verb.state_dict()['bias']
            ori_q_object_weight = self.q_object.state_dict()['weight']
            ori_q_object_bias = self.q_object.state_dict()['bias']
            ori_num_actions = self.num_actions
            new_num_actions = self.dictionary.action_size()

            new_q_verb_weight = nn.Parameter(torch.Tensor(new_num_actions, self.lstm_dim))
            new_q_verb_weight.data.normal_(0, 1)
            new_q_verb_weight[:ori_num_actions, :] = ori_q_verb_weight  # 기존에 학습된 임베딩 파라미터값은 보존해 준다.
            new_q_verb_bias = nn.Parameter(torch.Tensor(new_num_actions))
            new_q_verb_bias.data.normal_(0, 1)
            new_q_verb_bias[:ori_num_actions] = ori_q_verb_bias  # 기존에 학습된 임베딩 파라미터값은 보존해 준다.

            new_q_object_weight = nn.Parameter(torch.Tensor(new_num_actions, self.lstm_dim))
            new_q_object_weight.data.normal_(0, 1)
            new_q_object_weight[:ori_num_actions, :] = ori_q_object_weight  # 기존에 학습된 임베딩 파라미터값은 보존해 준다.
            new_q_object_bias = nn.Parameter(torch.Tensor(new_num_actions))
            new_q_object_bias.data.normal_(0, 1)
            new_q_object_bias[:ori_num_actions] = ori_q_object_bias  # 기존에 학습된 임베딩 파라미터값은 보존해 준다.

            del self.q_verb
            del self.q_object

            self.num_actions = new_num_actions # self.dictionary.action_size()

            self.q_verb = nn.Linear(self.lstm_dim, new_num_actions).to(self.device)
            self.q_verb.load_state_dict({'weight': new_q_verb_weight, 'bias':new_q_verb_bias})
            self.q_object = nn.Linear(self.lstm_dim, new_num_actions).to(self.device)
            self.q_object.load_state_dict({'weight': new_q_object_weight, 'bias': new_q_object_bias})
