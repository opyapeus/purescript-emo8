module Nemo.Input
  ( Input
  , pollKeyTouchInput
  , mkInputSig
  ) where

import Prelude

import Effect (Effect)
import Nemo.Data.KeyInput (KeyInput, pollKeyInput)
import Nemo.Data.PressState (PressState(..), updatePressState)
import Nemo.Data.TouchInput (TouchInput, pollTouchInput)
import Signal (Signal, foldp)

type Input =
  { isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  , catched :: 
    { isLeft :: Boolean
    , isRight :: Boolean
    , isUp :: Boolean
    , isDown :: Boolean
    , isW :: Boolean
    , isA :: Boolean
    , isS :: Boolean
    , isD :: Boolean
    }
  , released ::
    { isLeft :: Boolean
    , isRight :: Boolean
    , isUp :: Boolean
    , isDown :: Boolean
    , isW :: Boolean
    , isA :: Boolean
    , isS :: Boolean
    , isD :: Boolean
    }
  }

type InputState =
  { leftState :: PressState
  , rightState :: PressState
  , upState :: PressState
  , downState :: PressState
  , wState :: PressState
  , aState :: PressState
  , sState :: PressState
  , dState :: PressState
  }

type KeyTouchInput =
  { isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  }

pollKeyTouchInput :: Effect (Signal KeyTouchInput)
pollKeyTouchInput = do
  keyInput <- pollKeyInput
  touchInput <- pollTouchInput
  pure $ mergeInput <$> keyInput <*> touchInput

mergeInput :: KeyInput -> TouchInput -> KeyTouchInput
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

mkInputSig :: Signal KeyTouchInput -> Signal Input
mkInputSig = map mkInput <<< mkInputStateSig

mkInputStateSig :: Signal KeyTouchInput -> Signal InputState
mkInputStateSig = foldp updateInputState initialInputState

initialInputState :: InputState
initialInputState =
  { leftState: Unpressed
  , rightState: Unpressed
  , upState: Unpressed
  , downState: Unpressed
  , wState: Unpressed
  , aState: Unpressed
  , sState: Unpressed
  , dState: Unpressed
  }

updateInputState :: KeyTouchInput -> InputState -> InputState
updateInputState i s =
  { leftState: updatePressState i.isLeft s.leftState
  , rightState: updatePressState i.isRight s.rightState
  , upState: updatePressState i.isUp s.upState
  , downState: updatePressState i.isDown s.downState
  , wState: updatePressState i.isW s.wState
  , aState: updatePressState i.isA s.aState
  , sState: updatePressState i.isS s.sState
  , dState: updatePressState i.isD s.dState
  }

mkInput :: InputState -> Input
mkInput s =
  { isLeft: isOn s.leftState
  , isRight: isOn s.rightState
  , isUp: isOn s.upState
  , isDown: isOn s.downState
  , isW: isOn s.wState
  , isA: isOn s.aState
  , isS: isOn s.sState
  , isD: isOn s.dState
  , catched:
    { isLeft: isCatched s.leftState
    , isRight: isCatched s.rightState
    , isUp: isCatched s.upState
    , isDown: isCatched s.downState
    , isW: isCatched s.wState
    , isA: isCatched s.aState
    , isS: isCatched s.sState
    , isD: isCatched s.dState
    }
  , released:
    { isLeft: isReleased s.leftState
    , isRight: isReleased s.rightState
    , isUp: isReleased s.upState
    , isDown: isReleased s.downState
    , isW: isReleased s.wState
    , isA: isReleased s.aState
    , isS: isReleased s.sState
    , isD: isReleased s.dState
    }
  }
  where
    isOn ps = ps == Catched || ps == Pressed
    isCatched = (==) Catched
    isReleased = (==) Released
