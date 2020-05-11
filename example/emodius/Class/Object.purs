module Class.Object where

import Prelude
import Emo8.Data.Draw (Draw)
import Emo8.Game.Draw (DrawContext)
import Types (Pos)

class Object s where
  size :: s -> Int
  position :: s -> Pos

class
  Object s <= ObjectDraw s where
  draw :: forall dt. s -> Draw (DrawContext dt) Unit
