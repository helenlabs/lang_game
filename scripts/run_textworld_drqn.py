import argparse

import copy
import glob
import logging
import math
import os
import re
import sys
from collections import deque
from collections import namedtuple
from random import random, sample

import gym
#import gym_ple
import numpy as np
import pylab
import torch
from torch import nn, optim
from torch.autograd import Variable
from torch.nn import functional as F

from agents.textworld.text_agent import TextworldAgent
from models.language.dictionary import Dictionary
from models.dqn.drqn import LSTM_Representer, DRQN


# Training
BATCH_SIZE = 32
SEQUENCE_LENGTH = 8

# Embedding
WORD_EMB_SIZE = 20
SENTENCE_EMB_SIZE = 100
LSTM_HIDDEN_SIZE = 64


parser = argparse.ArgumentParser(description='DRQN Configuration')
parser.add_argument('--model', default='drqn', type=str, help='forcefully set step')
parser.add_argument('--step', default=None, type=int, help='forcefully set step')
parser.add_argument('--best', default=None, type=int, help='forcefully set best')
parser.add_argument('--load_latest', dest='load_latest', action='store_true', help='load latest checkpoint')
parser.add_argument('--no_load_latest', dest='load_latest', action='store_false', help='train from the scrach')
parser.add_argument('--checkpoint', default=None, type=str, help='specify the checkpoint file name')
parser.add_argument('--mode', dest='mode', default='train', type=str, help='[play, train]')
#parser.add_argument('--game', default='FlappyBird-v0', type=str, help='only Pygames are supported')
parser.add_argument('--game', default='./../data/textworld/games/customs/obj_10_qlen_3_room_2/game_1.ulx', type=str, help='TextWorld games are supported')
parser.add_argument('--clip', dest='clip', action='store_true', help='clipping the delta between -1 and 1')
parser.add_argument('--noclip', dest='clip', action='store_false', help='not clipping the delta')
parser.add_argument('--skip_action', default=4, type=int, help='Skipping actions')
parser.add_argument('--record', dest='record', action='store_true', help='Record playing a game')
#parser.add_argument('--inspect', dest='inspect', action='store_true', help='Inspect CNN')
parser.add_argument('--seed', default=111, type=int, help='random seed')
parser.set_defaults(clip=True, load_latest=True, record=False, inspect=False)
#parser: argparse.Namespace = parser.parse_args()   # code for python 3.6
args = parser.parse_args()



# Random Seed
torch.manual_seed(args.seed)
torch.cuda.manual_seed(args.seed)
np.random.seed(args.seed)

# Logging
logger = logging.getLogger('DQN')
logger.setLevel(logging.DEBUG)
formatter = logging.Formatter('%(message)s')
file_handler = logging.FileHandler('dqn_{args.model}.log')
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)

cuda = torch.cuda.is_available()
device = torch.device("cuda" if cuda else "cpu")

filenames_pattern = './../data/textworld/games/customs/obj_10_qlen_3_room_2/game_*.ulx'
train_games = glob.glob(filenames_pattern)

def main(args):
    dictionary = Dictionary(0)
    agent = TextworldAgent(args, dictionary, device)
    '''if args.load_latest and not args.checkpoint:
        agent.load_latest_checkpoint()
    elif args.checkpoint:
        agent.load_checkpoint(args.checkpoint)'''

    if args.mode.lower() == 'play':
        agent.play()
    elif args.mode.lower() == 'train':
        agent.train(train_games, dictionary, max_step=40, max_epoch=2)

if __name__ == '__main__':
    main(args)