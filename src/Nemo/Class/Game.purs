module Nemo.Class.Game where

import Effect (Effect)
import Nemo.Input (Input)
import Nemo.Types (Asset, AudioOp, RenderOp)

-- | Game class.
-- | Methods are called in order update, draw, sound every frame.
class Game s where
  update :: Asset -> Input -> s -> Effect s
  draw :: s -> Array RenderOp
  sound :: s -> Array AudioOp
