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

class Game s dr sr | s -> dr sr where
  update :: Input -> s -> Update dr sr s
  draw :: s -> Draw (DrawContext dr) Unit
  sound :: s -> Sound (SoundContext sr) Unit
