module Emo8.Util.Input
  ( noInput
  , catchInput
  , releaseInput
  , anyInput
  ) where

import Prelude
import Emo8.Data.Input (Input)

noInput :: Input
noInput =
  { isUp: false
  , isLeft: false
  , isDown: false
  , isRight: false
  , isW: false
  , isA: false
  , isS: false
  , isD: false
  }

catchInput :: Input -> Input -> Input
catchInput pi i =
  { isUp: not pi.isUp && i.isUp
  , isLeft: not pi.isLeft && i.isLeft
  , isDown: not pi.isDown && i.isDown
  , isRight: not pi.isRight && i.isRight
  , isW: not pi.isW && i.isW
  , isA: not pi.isA && i.isA
  , isS: not pi.isS && i.isS
  , isD: not pi.isD && i.isD
  }

releaseInput :: Input -> Input -> Input
releaseInput = flip catchInput

anyInput :: Input -> Boolean
anyInput i =
  i.isUp
    || i.isLeft
    || i.isDown
    || i.isRight
    || i.isW
    || i.isA
    || i.isS
    || i.isD
