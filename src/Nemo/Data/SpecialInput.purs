module Nemo.Data.SpecialInput
  ( SpecialInput
  , pollSpecialInputs
  ) where

import Prelude
import Effect (Effect)
import Signal (Signal)
import Signal.DOM (keyPressed)

type SpecialInput =
  { isResume :: Boolean
  , isSuspend :: Boolean
  , isForward :: Boolean
  , isLoad :: Boolean
  , isSave :: Boolean
  }

data Key = Alt | One | Two | Three | Four | Five

keyToCodeNum :: Key -> Int 
keyToCodeNum Alt = 18
keyToCodeNum One = 49
keyToCodeNum Two = 50
keyToCodeNum Three = 51
keyToCodeNum Four = 52
keyToCodeNum Five = 53

pollSpecialInputs :: Effect (Signal SpecialInput)
pollSpecialInputs = do
  alt <- f Alt
  one <- f One
  two <- f Two
  three <- f Three
  four <- f Four
  five <- f Five
  -- refactor?
  pure $
    ( \
      alt'
      one'
      two'
      three'
      four'
      five'
      ->
      { isResume: alt' && one'
      , isSuspend: alt' && two'
      , isForward: alt' && three'
      , isLoad: alt' && four'
      , isSave: alt' && five'
      } 
    )
    <$> alt
    <*> one
    <*> two
    <*> three
    <*> four
    <*> five
  where
    f = keyPressed <<< keyToCodeNum