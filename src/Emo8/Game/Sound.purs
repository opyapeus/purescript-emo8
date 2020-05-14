module Emo8.Game.Sound
  ( Sound
  , SoundContext
  , play
  , play'
  , stop
  ) where

import Prelude
import Audio.WebAudio.AudioParam (setValueAtTime)
import Audio.WebAudio.BaseAudioContext (createGain, createOscillator, currentTime, destination)
import Audio.WebAudio.GainNode (gain)
import Audio.WebAudio.Oscillator (frequency, setOscillatorType, startOscillator, stopOscillator)
import Audio.WebAudio.Types (AudioContext, OscillatorNode, connect)
import Control.Monad.Reader as Reader
import Data.Foldable (maximum, traverse_)
import Data.FoldableWithIndex (forWithIndex_)
import Data.Int (toNumber)
import Data.List as L
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Traversable (traverse)
import Effect.Class (liftEffect)
import Effect.Class.Console (error)
import Effect.Ref as Ref
import Emo8.Data.Note (toFreq)
import Emo8.Data.Sound (SoundR)
import Emo8.Data.Tone (Tone, defaultGain, toOscType)
import Emo8.Parser.Type (Score)
import Emo8.Type (Tempo)
import Emo8.Util.List (zipWithMaybeA)

-- | Emo8 sound monad which runs some sound operations.
type Sound
  = SoundR SoundContext

-- REVIEW: State instead of Ref?
type SoundContext
  = { ctx :: AudioContext
    , ref :: Ref.Ref (Map.Map Score (L.List OscillatorNode))
    }

-- TODO: Map key type
-- | Play the score with the specified the score, tone and tempo.
-- | 
-- | The operation is ignored until the score being stopped.
play :: Score -> Tone -> Tempo -> Sound Unit
play score tone tempo = do
  r <- Reader.ask
  liftEffect do
    m <- Ref.read r.ref
    case Map.lookup score m of
      -- resume
      Just _ -> pure unit
      -- create new
      Nothing -> do
        now <- currentTime r.ctx
        g <- createGain r.ctx
        dest <- destination r.ctx
        connect g dest
        gainP <- gain g
        void $ setValueAtTime (defaultGain tone) now gainP
        oscs <- prepareOscillators r.ctx g score
        freqParams <- traverse frequency oscs
        forWithIndex_ score \i ->
          zipWithMaybeA
            ( case _, _ of
                Just freqP, Just note -> void $ setValueAtTime (toFreq note) (startTime now i) freqP
                Just freqP, Nothing -> void $ setValueAtTime 0.0 (startTime now i) freqP
                Nothing, _ -> error "unreachable"
            )
            freqParams
        -- NOTE: set end to terminate score
        let
          len = L.length score
        void $ setValueAtTime 0.0 (startTime now len) gainP
        -- start sound
        traverse_ (startOscillator now) oscs
        -- save ref
        Ref.write (Map.singleton score oscs) r.ref
  where
  pitch = 1.0 / toNumber tempo

  startTime now num = now + pitch * toNumber num

  prepareOscillators ctx g = traverse (const (prep ctx g)) <<< maxNotes

  prep ctx g = do
    osc <- createOscillator ctx
    connect osc g
    setOscillatorType (toOscType tone) osc
    pure osc

  maxNotes = fromMaybe L.Nil <<< maximum

-- | `play` the score after `stop`.
play' :: Score -> Tone -> Tempo -> Sound Unit
play' score tone tempo = do
  stop score
  play score tone tempo

-- | Stop playing with the specified score.
stop :: Score -> Sound Unit
stop score = do
  r <- Reader.ask
  liftEffect do
    m <- Ref.read r.ref
    case Map.lookup score m of
      -- delete existing
      Just oscs -> do
        now <- currentTime r.ctx
        -- stop sound
        traverse_ (stopOscillator now) oscs
        let
          nm = Map.delete score m
        -- save ref
        Ref.write nm r.ref
      -- nothing to delete
      Nothing -> pure unit
