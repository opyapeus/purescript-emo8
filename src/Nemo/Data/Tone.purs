module Nemo.Data.Tone
  ( Tone(..)
  , setTone
  ) where

import Prelude

import Audio.WebAudio.Oscillator (OscillatorType(..), setOscillatorType)
import Audio.WebAudio.Types (AudioContext, OscillatorNode)
import Data.Array (concatMap, range, (:))
import Data.Int (pow)
import Data.Unfoldable (replicate)
import Effect (Effect)
import Nemo.Patch.OscillatorCustom (FFTComponent, createPeriodicWave, setPeriodicWave)

data Tone
  = Sin
  | Sq
  | Tri
  | Saw
  | Noise

whiteNoise :: Array FFTComponent
whiteNoise =
  map extendToComplex $
    -- NOTE: generate [0,1,1,0,1,0,0,0,1,0,0,0,0,0,0,0,1,...], 4096 elements
    0.0 : concatMap (\i -> 1.0 : replicate (pow 2 i - 1) 0.0) (range 0 11)

extendToComplex :: Number -> FFTComponent
extendToComplex r = { real: r, imag: 0.0 }

setTone :: Tone -> OscillatorNode -> AudioContext -> Effect Unit
setTone Sin on _ = setOscillatorType Sine on
setTone Sq on _ = setOscillatorType Square on
setTone Tri on _ = setOscillatorType Triangle on
setTone Saw on _ = setOscillatorType Sawtooth on
setTone Noise on ctx = do
  wave <- createPeriodicWave whiteNoise ctx
  setPeriodicWave wave on