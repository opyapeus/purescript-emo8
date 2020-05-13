module Emo8.Game
  ( class Game
  , update
  , draw
  , sound
  ) where

import Prelude
import Emo8.Data.Input (Input)
import Emo8.Game.Draw (Draw')
import Emo8.Game.Sound (Sound')
import Emo8.Game.Update (Update')

-- | Emo8 basic game class.
-- |
-- | Update, draw, sound functions are called in order each frames.
-- |
-- | - `s` is a game state type
-- | - `dt` is a draw resouce type
-- | - `st` is a sound resouce type
class Game s dt st | s -> dt st where
  -- | It takes input and current state and should return next state.
  -- | You can read and write (optional) draw and sound resources in Update monad.
  update :: Input -> s -> Update' dt st s
  -- | It takes next state and does some draw operations.
  -- | You can read draw resources in Draw monad.
  draw :: s -> Draw' dt Unit
  -- | It takes next state and does some sound operations.
  -- | You can read sound resources in Sound monad.
  sound :: s -> Sound' st Unit
