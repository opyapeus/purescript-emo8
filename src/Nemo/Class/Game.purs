module Nemo.Class.Game where

import Prelude

import Nemo.Draw.Action (Draw)
import Nemo.Input (Input)
import Nemo.Sound.Action (Sound)
import Nemo.Update.Action (Update)

-- | Game class.
-- | Methods are called in order update, draw, sound every frame.
class Game s where
  update :: Input -> s -> Update s
  draw :: s -> Draw Unit
  sound :: s -> Sound Unit
