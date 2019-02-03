module Emo8.Data.Tone
  ( Tone(..)
  , setTone
  ) where

import Prelude

import Audio.WebAudio.Oscillator (OscillatorType(..), setOscillatorType)
import Audio.WebAudio.Types (AudioContext, OscillatorNode)
import Data.Array ((:))
import Data.Unfoldable (replicateA)
import Effect (Effect)
import Effect.Random (randomRange)
import Emo8.FFI.OscillatorCustom (FFTComponent, createPeriodicWave, setPeriodicWave)
import Math (cos, pi, sin)

data Tone
  = Sin
  | Sq
  | Tri
  | Saw
  | Noise

type Radian = Number

-- FIXME: can not express noise with createPeriodicWave?
whiteNoise :: Array Radian -> Array FFTComponent
whiteNoise rads = { real: 0.0, imag: 0.0 } : map extendToComplex rads

extendToComplex :: Radian -> FFTComponent
extendToComplex rad = { real: cos rad, imag: sin rad }

setTone :: Tone -> OscillatorNode -> AudioContext -> Effect Unit
setTone Sin on _ = setOscillatorType Sine on
setTone Sq on _ = setOscillatorType Square on
setTone Tri on _ = setOscillatorType Triangle on
setTone Saw on _ = setOscillatorType Sawtooth on
setTone Noise on ctx = do
  rads <- replicateA 31 $ randomRange 0.0 (2.0 * pi)
  wave <- createPeriodicWave (whiteNoise rads) ctx
  setPeriodicWave wave on