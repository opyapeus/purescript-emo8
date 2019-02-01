module Emo8.Class.Game where

import Prelude

import Emo8.Draw.Action (Draw)
import Emo8.Input (Input)
import Emo8.Sound.Action (Sound)
import Emo8.Update.Action (Update)

-- | Game class.
-- | Methods are called in order update, draw, sound every frame.
class Game s where
  update :: Input -> s -> Update s
  draw :: s -> Draw Unit
  sound :: s -> Sound Unit
