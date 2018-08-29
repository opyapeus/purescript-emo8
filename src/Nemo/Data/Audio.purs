module Nemo.Data.Audio where

import Prelude
import Nemo.Class.Read (class Read, defaultRead, Patterns)


data Note
  = C | CS | D | DS
  | E | F | FS | G
  | GS | A | AS | B

instance showNote :: Show Note where
  show C = "🕛"
  show CS = "🕐"
  show D = "🕑"
  show DS = "🕒"
  show E = "🕓"
  show F = "🕔"
  show FS = "🕕"
  show G = "🕖"
  show GS = "🕗"
  show A = "🕘"
  show AS = "🕙"
  show B = "🕚"

instance readNote :: Read Note where
  read = defaultRead notes
   
notes :: Patterns Note
notes = 
    [ C, CS, D, DS
    , E, F, FS, G
    , GS, A, AS, B
    ]

-- NOTE: C1 base tone
noteToFreq :: Note -> Number
noteToFreq C = 32.7031956626
noteToFreq CS = 34.6478288721
noteToFreq D = 36.7080959897
noteToFreq DS = 38.8908729653
noteToFreq E = 41.2034446141
noteToFreq F = 43.6535289291
noteToFreq FS = 46.249302839
noteToFreq G = 48.9994294977
noteToFreq GS = 51.9130871975
noteToFreq A = 55.0
noteToFreq AS = 58.2704701898
noteToFreq B = 61.735412657


-- NOTE: A4 (A Fourth) is 440 Hz
data Octave = First | Second | Third | Fourth | Fifth | Sixth | Seventh

-- TODO: number emoji (parse multi code)
instance showOctave :: Show Octave where
  show First = "🐁"
  show Second = "🐄"
  show Third = "🐅"
  show Fourth = "🐓"
  show Fifth  = "🐉"
  show Sixth  = "🐍"
  show Seventh = "🐑"

instance readOctave :: Read Octave where
  read = defaultRead octaves
   
octaves :: Patterns Octave
octaves = [ First, Second, Third, Fourth, Fifth, Sixth, Seventh ]

octaveToMult :: Octave -> Number
octaveToMult First = 1.0
octaveToMult Second = 2.0
octaveToMult Third = 4.0
octaveToMult Fourth = 8.0
octaveToMult Fifth = 16.0
octaveToMult Sixth = 32.0
octaveToMult Seventh = 64.0


data Vol = Mute | Low | Med | High

instance showVol :: Show Vol where
  show Mute = "🔇"
  show Low = "🔈"
  show Med = "🔉"
  show High = "🔊"

instance readVol :: Read Vol where
  read = defaultRead vols

vols :: Patterns Vol
vols = [ Mute, Low, Med, High ]

volToGain :: Vol -> Number
volToGain Mute = 0.0
volToGain Low = 0.33
volToGain Med = 0.67
volToGain High = 1.0


data Efct = None | Detune

instance showEfct :: Show Efct where
  show None = "🎼"
  show Detune = "🎛"

instance readEfct :: Read Efct where
  read = defaultRead efcts

efcts :: Patterns Efct
efcts = [ None, Detune ]

efctToDetune :: Efct -> Number
efctToDetune None = 0.0
efctToDetune Detune = 50.0 -- 50 cent (quarter tone)

