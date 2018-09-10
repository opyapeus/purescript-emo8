module Nemo.Input
  ( Input
  , pollKeyTouchInput
  , mkInputSig
  ) where

import Prelude

import Effect (Effect)
import Nemo.Data.KeyInput (KeyInput, pollKeyInput)
import Nemo.Data.TouchInput (TouchInput, pollTouchInput)
import Nemo.Data.PressState (PressState(..), updatePressState)
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
  , isLeftCat :: Boolean
  , isRightCat :: Boolean
  , isUpCat :: Boolean
  , isDownCat :: Boolean
  , isWCat :: Boolean
  , isACat :: Boolean
  , isSCat :: Boolean
  , isDCat :: Boolean
  , isLeftRel :: Boolean
  , isRightRel :: Boolean
  , isUpRel :: Boolean
  , isDownRel :: Boolean
  , isWRel :: Boolean
  , isARel :: Boolean
  , isSRel :: Boolean
  , isDRel :: Boolean
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
  , isLeftCat: s.leftState == Catched
  , isRightCat: s.rightState == Catched
  , isUpCat: s.upState == Catched
  , isDownCat: s.downState == Catched
  , isWCat: s.wState == Catched
  , isACat: s.aState == Catched
  , isSCat: s.sState == Catched
  , isDCat: s.dState == Catched
  , isLeftRel: s.leftState == Released
  , isRightRel: s.rightState == Released
  , isUpRel: s.upState == Released
  , isDownRel: s.downState == Released
  , isWRel: s.wState == Released
  , isARel: s.aState == Released
  , isSRel: s.sState == Released
  , isDRel: s.dState == Released
  }
  where isOn ps = ps == Catched || ps == Pressed
