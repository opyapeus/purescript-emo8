module Nemo.Data.KeyTouchInput
  ( KeyTouchInput(..)
  ) where

import Prelude

import Nemo.Class.Input (class Input, poll)
import Nemo.Data.KeyInput (KeyInput(..))
import Nemo.Data.TouchInput (TouchInput(..))

newtype KeyTouchInput = KeyTouchInput
  { isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  }

instance inputKeyTouchInput :: Input KeyTouchInput where
  poll = do
    keyInputSig <- poll
    touchInputSig <- poll
    pure $ mergeInput <$> keyInputSig <*> touchInputSig

mergeInput :: KeyInput -> TouchInput -> KeyTouchInput
mergeInput (KeyInput k) (TouchInput t) = KeyTouchInput
  { isLeft : k.isLeft || t.isLeft
  , isRight : k.isRight || t.isRight
  , isUp : k.isUp || t.isUp
  , isDown : k.isDown || t.isDown
  , isW : k.isW || t.isW
  , isA : k.isA || t.isA
  , isS : k.isS || t.isS
  , isD : k.isD || t.isD
  }
