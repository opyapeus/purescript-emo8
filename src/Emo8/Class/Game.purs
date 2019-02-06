module Emo8.Class.Game where

import Prelude

import Emo8.Action.Draw (Draw)
import Emo8.Action.Sound (Sound)
import Emo8.Action.Update (Update)
import Emo8.Input (Input)

-- | Game class.
-- | Methods are called in order update, draw, sound every frame.
class Game s where
  update :: Input -> s -> Update s
  draw :: s -> Draw Unit
  sound :: s -> Sound Unit
