module Nemo.Input
  ( Input
  , pollInput
  ) where

import Prelude

import Effect (Effect)
import Nemo.Data.KeyInput (KeyInput, pollKeyInput)
import Nemo.Data.TouchInput (TouchInput, pollTouchInput)
import Signal (Signal)

type Input =
  { isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  }

pollInput :: Effect (Signal Input)
pollInput = do
  keyInput <- pollKeyInput
  touchInput <- pollTouchInput
  pure $ mergeInput <$> keyInput <*> touchInput

mergeInput :: KeyInput -> TouchInput -> Input
mergeInput k t =
  { isLeft : k.isLeft || t.isLeft
  , isRight : k.isRight || t.isRight
  , isUp : k.isUp || t.isUp
  , isDown : k.isDown || t.isDown
  , isW : k.isW || t.isW
  , isA : k.isA || t.isA
  , isS : k.isS || t.isS
  , isD : k.isD || t.isD
  }
