module Nemo.Class.Game where

import Prelude (const)
import Nemo.Types (Asset, AudioOp, RenderOp)
import Nemo.Input (Input)

-- NOTE: Default method implementations
-- https://github.com/purescript/purescript/issues/3067

-- | Game class.
-- | Methods are called in order update, draw, sound every frame.
class Game s where
  update :: Input -> s -> (Asset -> s)
  draw :: s -> Array RenderOp
  sound :: s -> Array AudioOp

-- | Default update method.
-- | Do nothing.
defaultUpdate :: forall s. Game s => Input -> s -> (Asset -> s)
defaultUpdate _ = const

-- | Default draw method.
-- | Do nothing.
defaultDraw :: forall s. Game s => s -> Array RenderOp
defaultDraw _ = []

-- | Default sound method.
-- | Do nothing.
defaultSound :: forall s. Game s => s -> Array AudioOp
defaultSound _ = []
