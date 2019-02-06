module Test.Main where

import Prelude

import Effect (Effect)
import Test.ParseSound (parseSoundTest)
import Test.RawSemigroup (rawSemigroupTest)
import Test.Unit.Main (runTest)

main :: Effect Unit
main =
  runTest do
    parseSoundTest
    rawSemigroupTest
