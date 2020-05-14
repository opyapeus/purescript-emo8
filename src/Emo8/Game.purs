module Emo8.Game
  ( class Game
  , update
  , draw
  , sound
  ) where

import Prelude
import Emo8.Data.Input (Input)
import Emo8.Game.Draw (Draw)
import Emo8.Game.Sound (Sound)
import Emo8.Game.Update (Update)

-- | Emo8 basic game class.
-- |
-- | Update, draw, sound functions are called in order each frames.
-- |
-- | - `s` is a game state type
class Game s where
  -- | It takes input and current state and should return next state.
  update :: Input -> s -> Update s
  -- | It takes next state and runs some draw operations.
  draw :: s -> Draw Unit
  -- | It takes next state and runs some sound operations.
  sound :: s -> Sound Unit
