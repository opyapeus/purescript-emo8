module Nemo.Data.Audio where

import Prelude
import Audio.WebAudio.Oscillator (OscillatorType(..))
import Nemo.Class.Read (class Read, defaultRead, Patterns)


data Note
  = C4 | CS4 | D4 | DS4
  | E4 | F4 | FS4 | G4
  | GS4 | A4 | AS4 | B4
  | C5 | CS5 | D5 | DS5
  | E5 | F5 | FS5 | G5
  | GS5 | A5 | AS5 | B5
  | Rest

instance showNote :: Show Note where
  show C4 = "🕛"
  show CS4 = "🕧"
  show D4 = "🕐"
  show DS4 = "🕜"
  show E4 = "🕑"
  show F4 = "🕝"
  show FS4 = "🕒"
  show G4 = "🕞"
  show GS4 = "🕓"
  show A4 = "🕟"
  show AS4 = "🕔"
  show B4 = "🕠"
  show C5 = "🕕"
  show CS5 = "🕡"
  show D5 = "🕖"
  show DS5 = "🕢"
  show E5 = "🕗"
  show F5 = "🕣"
  show FS5 = "🕘"
  show G5 = "🕤"
  show GS5 = "🕙"
  show A5 = "🕥"
  show AS5 = "🕚"
  show B5 = "🕦"
  show Rest = "🈳"

instance readNote :: Read Note where
  read = defaultRead notes
   
notes :: Patterns Note
notes = 
    [ C4, CS4, D4, DS4
    , E4, F4, FS4, G4
    , GS4, A4, AS4, B4
    , C5, CS5, D5, DS5
    , E5, F5, FS5, G5
    , GS5, A5, AS5, B5
    , Rest
    ]

noteToFreq :: Note -> Number
noteToFreq C4 = 261.6
noteToFreq CS4 = 277.2
noteToFreq D4 = 293.7
noteToFreq DS4 = 311.1
noteToFreq E4 = 329.6
noteToFreq F4 = 349.2
noteToFreq FS4 = 370.0
noteToFreq G4 = 392.0
noteToFreq GS4 = 415.3
noteToFreq A4 = 440.0
noteToFreq AS4 = 466.2
noteToFreq B4 = 493.9
noteToFreq C5 = 523.3
noteToFreq CS5 = 554.4
noteToFreq D5 = 587.3
noteToFreq DS5 = 622.3
noteToFreq E5 = 659.3
noteToFreq F5 = 698.5
noteToFreq FS5 = 740.0
noteToFreq G5 = 784.0
noteToFreq GS5 = 830.6
noteToFreq A5 = 880.0
noteToFreq AS5 = 932.3
noteToFreq B5 = 987.8
noteToFreq Rest = 0.0


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
efctToDetune Detune = 50.0


data Tone = Sin | Seq | Tri | Saw

toneToType :: Tone -> OscillatorType
toneToType Sin = Sine
toneToType Seq = Square
toneToType Tri= Triangle
toneToType Saw = Sawtooth




