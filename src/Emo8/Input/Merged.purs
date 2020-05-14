module Emo8.Input.Merged
  ( mkInput
  ) where

import Prelude
import Data.Foldable (elem)
import Data.Maybe (Maybe(..))
import Emo8.Data.Dir (arounds)
import Emo8.Data.Input (Input)
import Emo8.Input.Direction (Direction(..))
import Emo8.Input.Keyboard (Keyboard(..))

mkInput :: Keyboard -> Direction -> Input
mkInput (Keyboard k) dir =
  { isUp: k.isUp || d.isUp
  , isLeft: k.isLeft || d.isLeft
  , isDown: k.isDown || d.isDown
  , isRight: k.isRight || d.isRight
  , isW: k.isW || d.isW
  , isA: k.isA || d.isA
  , isS: k.isS || d.isS
  , isD: k.isD || d.isD
  }
  where
  d = dirToInput dir

dirToInput :: Direction -> Input
dirToInput (Direction d) =
  { isUp: melem d.rightDir arounds.north
  , isLeft: melem d.rightDir arounds.west
  , isDown: melem d.rightDir arounds.south
  , isRight: melem d.rightDir arounds.east
  , isW: melem d.leftDir arounds.north
  , isA: melem d.leftDir arounds.west
  , isS: melem d.leftDir arounds.south
  , isD: melem d.leftDir arounds.east
  }
  where
  melem Nothing = const false

  melem (Just e) = elem e
