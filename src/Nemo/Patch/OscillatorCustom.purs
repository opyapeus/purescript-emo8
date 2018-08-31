module Nemo.Patch.OscillatorCustom
    ( PeriodicWave
    , FFTComponent
    , createPeriodicWave
    , setPeriodicWave
    ) where

import Prelude

import Audio.WebAudio.Types (AudioContext, OscillatorNode)
import Effect (Effect)

type FFTComponent = { real :: Number, imag :: Number }

foreign import data PeriodicWave :: Type

foreign import createPeriodicWaveImpl :: Array FFTComponent -> AudioContext -> Effect PeriodicWave

createPeriodicWave :: Array FFTComponent -> AudioContext -> Effect PeriodicWave
createPeriodicWave = createPeriodicWaveImpl

foreign import setPeriodicWaveImpl :: PeriodicWave -> OscillatorNode -> Effect Unit

setPeriodicWave :: PeriodicWave -> OscillatorNode -> Effect Unit
setPeriodicWave = setPeriodicWaveImpl
