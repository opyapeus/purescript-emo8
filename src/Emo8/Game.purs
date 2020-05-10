module Emo8.Game
  ( class Game
  , update
  , draw
  , sound
  ) where

import Prelude
import Emo8.Data.Draw (Draw)
import Emo8.Data.Input (Input)
import Emo8.Data.Sound (Sound)
import Emo8.Data.Update (Update)
import Emo8.Game.Draw (DrawContext)
import Emo8.Game.Sound (SoundContext)

class Game s dt st | s -> dt st where
  update :: Input -> s -> Update dt st s
  draw :: s -> Draw (DrawContext dt) Unit
  sound :: s -> Sound (SoundContext st) Unit
