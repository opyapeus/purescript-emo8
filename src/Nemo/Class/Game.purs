module Nemo.Class.Game where

import Prelude

import Effect (Effect)
import Nemo.Draw.Action (Draw)
import Nemo.Input (Input)
import Nemo.Sound.Action (Sound)
import Nemo.Types (Asset)

-- | Game class.
-- | Methods are called in order update, draw, sound every frame.
class Game s where
  update :: Asset -> Input -> s -> Effect s
  draw :: s -> Draw Unit
  sound :: s -> Sound Unit
