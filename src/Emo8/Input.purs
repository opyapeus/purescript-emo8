module Emo8.Input
  ( Input
  , mkInputSig
  , isCatchAny
  , isReleaseAny
  ) where

import Prelude

import Emo8.Data.KeyTouchInput (KeyTouchInput(..))
import Emo8.Data.PressState (PressState(..), updatePressState)
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

-- NOTE: update after sampleOn not to miss catch and release state
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

isCatchAny :: Input -> Boolean
isCatchAny i
  = i.catched.isW || i.catched.isS || i.catched.isA || i.catched.isD
  || i.catched.isUp || i.catched.isDown || i.catched.isLeft || i.catched.isRight

isReleaseAny :: Input -> Boolean
isReleaseAny i
  = i.released.isW || i.released.isS || i.released.isA || i.released.isD
  || i.released.isUp || i.released.isDown || i.released.isLeft || i.released.isRight

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
updateInputState (KeyTouchInput i) s =
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
