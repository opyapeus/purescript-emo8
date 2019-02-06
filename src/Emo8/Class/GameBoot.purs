module Emo8.Class.GameBoot where

import Emo8.Class.Game (class Game)

class Game s <= GameBoot s where
  finished :: s -> Boolean
