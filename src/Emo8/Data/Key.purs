module Emo8.Data.Key
  ( Key(..)
  , keyToCodeNum
  ) where

data Key
  = Up
  | Left
  | Down
  | Right
  | W
  | A
  | S
  | D

keyToCodeNum :: Key -> Int
keyToCodeNum Up = 38

keyToCodeNum Left = 37

keyToCodeNum Down = 40

keyToCodeNum Right = 39

keyToCodeNum W = 87

keyToCodeNum A = 65

keyToCodeNum S = 83

keyToCodeNum D = 68
