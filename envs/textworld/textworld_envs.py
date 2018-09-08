import textworld
import os

class TextWorld_Envs(object):
    def __init__(self, game, record=False, seed=0):
        self.env = textworld.start(game)
        self.game_name = os.path.basename(game)


    def init(self):
        """
        @return observation
        """
        return self.env.reset()  # Start new run. -> initial state return!!


    def step(self, action: int):
        observation, reward, done, info = self.game.step(action)
        return observation, reward, done, info


    def reset(self):
        """
        :return: observation array
        """
        observation = self.game.reset()
        observation = self.preprocess(observation)
        return observation


    @property
    def action_space(self):
        return self.game.action_space.n