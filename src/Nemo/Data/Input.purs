module Nemo.Data.Input
  ( Input(..)
  , pollInputs
  ) where

import Prelude
import Effect (Effect)
import Signal (Signal)
import Signal.DOM (keyPressed)

data Input = Input
  { isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  }

data Key = Left | Right | Up | Down | W | A | S | D

keyToCodeNum :: Key -> Int 
keyToCodeNum Left = 37
keyToCodeNum Right = 39
keyToCodeNum Up = 38
keyToCodeNum Down = 40
keyToCodeNum W = 87
keyToCodeNum A = 65
keyToCodeNum S = 83
keyToCodeNum D = 68

pollInputs :: Effect (Signal Input)
pollInputs = do
    leftInput <- keyPressed $ keyToCodeNum Left
    rightInput <- keyPressed $ keyToCodeNum Right
    upInput <- keyPressed $ keyToCodeNum Up
    downInput <- keyPressed $ keyToCodeNum Down
    wInput <- keyPressed $ keyToCodeNum W
    aInput <- keyPressed $ keyToCodeNum A
    sInput <- keyPressed $ keyToCodeNum S
    dInput <- keyPressed $ keyToCodeNum D
    -- TODO: refactor
    pure $
        map Input$
          { isLeft: _
          , isRight: _
          , isUp: _
          , isDown: _
          , isW: _
          , isA: _
          , isS: _
          , isD: _
          } 
            <$> leftInput
            <*> rightInput
            <*> upInput
            <*> downInput
            <*> wInput
            <*> aInput
            <*> sInput
            <*> dInput

