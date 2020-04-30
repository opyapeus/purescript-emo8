module Emo8.Data.Tone
  ( Tone(..)
  , toOscType
  , defaultGain
  ) where

import Audio.WebAudio.Oscillator as O

data Tone
  = Sine
  | Square
  | Sawtooth
  | Triangle

toOscType :: Tone -> O.OscillatorType
toOscType Sine = O.Sine

toOscType Square = O.Square

toOscType Sawtooth = O.Sawtooth

toOscType Triangle = O.Triangle

defaultGain :: Tone -> Number
defaultGain Sine = 1.0

defaultGain Square = 0.25

defaultGain Sawtooth = 0.25

defaultGain Triangle = 1.0
