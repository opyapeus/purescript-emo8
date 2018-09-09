module Nemo.Data.KeyInput
  ( KeyInput
  , pollKeyInput
  ) where

import Prelude
import Effect (Effect)
import Signal (Signal)
import Signal.DOM (keyPressed)

type KeyInput =
  { isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  }

data Key
  = Left | Right | Up | Down
  | W | A | S | D

keyToCodeNum :: Key -> Int 
keyToCodeNum Left = 37
keyToCodeNum Right = 39
keyToCodeNum Up = 38
keyToCodeNum Down = 40
keyToCodeNum W = 87
keyToCodeNum A = 65
keyToCodeNum S = 83
keyToCodeNum D = 68

pollKeyInput :: Effect (Signal KeyInput)
pollKeyInput = do
  left <- f Left
  right <- f Right
  up <- f Up
  down <- f Down
  w <- f W
  a <- f A
  s <- f S
  d <- f D
  -- TODO: refactor?
  pure $
    { isLeft: _
    , isRight: _
    , isUp: _
    , isDown: _
    , isW: _
    , isA: _
    , isS: _
    , isD: _
    } 
      <$> left
      <*> right
      <*> up
      <*> down
      <*> w
      <*> a
      <*> s
      <*> d
  where
    f = keyPressed <<< keyToCodeNum
