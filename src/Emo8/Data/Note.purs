module Emo8.Data.Note
  ( Note(..)
  , toFreq
  , candidates
  ) where

import Prelude
import Data.List (List, fromFoldable)

data Note
  = C4
  | CS4
  | D4
  | DS4
  | E4
  | F4
  | FS4
  | G4
  | GS4
  | A4
  | AS4
  | B4
  | C5
  | CS5
  | D5
  | DS5
  | E5
  | F5
  | FS5
  | G5
  | GS5
  | A5
  | AS5
  | B5
  | C6

derive instance eqNote :: Eq Note

derive instance ordNote :: Ord Note

toFreq :: Note -> Number
toFreq C4 = 261.626

toFreq CS4 = 277.183

toFreq D4 = 293.665

toFreq DS4 = 311.127

toFreq E4 = 329.628

toFreq F4 = 349.228

toFreq FS4 = 369.994

toFreq G4 = 391.995

toFreq GS4 = 415.305

toFreq A4 = 440.0

toFreq AS4 = 466.164

toFreq B4 = 493.883

toFreq C5 = 523.251

toFreq CS5 = 554.365

toFreq D5 = 587.330

toFreq DS5 = 622.254

toFreq E5 = 659.255

toFreq F5 = 698.456

toFreq FS5 = 739.989

toFreq G5 = 783.991

toFreq GS5 = 830.609

toFreq A5 = 880.000

toFreq AS5 = 932.328

toFreq B5 = 987.767

toFreq C6 = 1046.502

candidates :: List Note
candidates =
  fromFoldable
    [ C4
    , CS4
    , D4
    , DS4
    , E4
    , F4
    , FS4
    , G4
    , GS4
    , A4
    , AS4
    , B4
    , C5
    , CS5
    , D5
    , DS5
    , E5
    , F5
    , FS5
    , G5
    , GS5
    , A5
    , AS5
    , B5
    , C6
    ]
