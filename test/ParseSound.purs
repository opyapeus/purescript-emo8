module Test.ParseSound
    ( parseSoundTest
    ) where

import Prelude

import Data.Either (Either(..), isLeft)
import Emo8.Data.Audio (Efct(..), Note(..), Octave(..), Vol(..))
import Emo8.Parse (RawSound(..), parseSound)
import Test.Unit (TestSuite, suite, test)
import Test.Unit.Assert (equal)

parseSoundTest :: TestSuite
parseSoundTest =
    suite "Parse Sound" do
        test "valid" do
            equal expected $ parseSound validSound
        test "stringArrayToTick: invalid format" do
            equal true $ isLeft $ parseSound invalidFormatSound
        test "matchNote: not match" do
            equal true $ isLeft $ parseSound notMatchSound
        test "satisfyNoteLen: exceed note length" do
            equal true $ isLeft $ parseSound exceedNoteLengthSound
    where
        expected = Right $
            [
                { scales:
                    [ { octave: Fourth, note: C }
                    , { octave: Fourth, note: CS }
                    , { octave: Fourth, note: D }
                    , { octave: Fifth, note: C }
                    , { octave: Fifth, note: CS }
                    ]
                , vol: Low
                , efct: None
                }
            ]

validSound :: RawSound
validSound = RawSound """
🎼🔈4️⃣🎹🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""

invalidFormatSound :: RawSound
invalidFormatSound = RawSound """
🎼🔈4️⃣🎹🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""

notMatchSound :: RawSound
notMatchSound = RawSound """
🎼🔈4️⃣🎹🎹👾🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""

exceedNoteLengthSound :: RawSound
exceedNoteLengthSound = RawSound """
🎼🔈4️⃣🎹🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🎹🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""
