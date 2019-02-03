module Test.RawSemigroup
    ( rawSemigroupTest
    ) where

import Prelude

import Emo8.Parse (RawMap(..), RawSound(..))
import Test.Unit (TestSuite, suite, test)
import Test.Unit.Assert (equal)

rawSemigroupTest :: TestSuite
rawSemigroupTest =
    suite "Raw Semigroup Append" do
        test "sound" do
            equal soundSum $ soundA <> soundB
        test "map" do
            equal mapSum $ mapA <> mapB

soundA :: RawSound
soundA = RawSound """
🎼🔈4️⃣🎹🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""

soundB :: RawSound
soundB = RawSound """
🎼🔈4️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""

soundSum :: RawSound
soundSum = RawSound """
🎼🔈4️⃣🎹🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈4️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""

mapA :: RawMap
mapA = RawMap """
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈚
🈳🈳🈳🈳🈳🈳🈳🈚
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈵🈵🈵🈵🈳🈳🈳🈳
"""

mapB :: RawMap
mapB = RawMap """
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈚🈳🈳🈳🈳🈳🈳🈳
🈚🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈵🈵🈵🈵
"""

mapSum :: RawMap
mapSum = RawMap """
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈚
🈳🈳🈳🈳🈳🈳🈳🈚
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈵🈵🈵🈵🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈚🈳🈳🈳🈳🈳🈳🈳
🈚🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈵🈵🈵🈵
"""
