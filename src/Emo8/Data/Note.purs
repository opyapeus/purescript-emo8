module Emo8.Data.Note
  ( Note(..)
  , toFreq
  , notes
  ) where

import Prelude
import Data.List (List, fromFoldable)

-- | Emo8 note type which supports the scales from A4 (440Hz) to A5 (880Hz).
data Note
  = A4
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

derive instance eqNote :: Eq Note

derive instance ordNote :: Ord Note

toFreq :: Note -> Number
toFreq A4 = 440.000

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

notes :: List Note
notes =
  fromFoldable
    [ A4
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
    ]
