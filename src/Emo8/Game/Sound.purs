module Emo8.Game.Sound
  ( SoundContext
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
import Data.Newtype (class Newtype, unwrap)
import Data.Traversable (traverse)
import Effect.Class (liftEffect)
import Effect.Class.Console (error, log)
import Effect.Ref as Ref
import Emo8.Data.Note (toFreq)
import Emo8.Data.Sound (Sound)
import Emo8.Data.Tone (Tone, defaultGain, toOscType)
import Emo8.Parser.Type (Score)
import Emo8.Type (Tempo)
import Emo8.Util.List (zipWithMaybeA)

type Sound' r
  = Sound (SoundContext r)

-- REVIEW: State instead of Ref?
type SoundContext r
  = { ctx :: AudioContext
    , resource :: r
    , ref :: Ref.Ref (Map.Map Score (L.List OscillatorNode))
    }

-- TODO: Map key type
play ::
  forall r r'.
  Newtype r { | r' } =>
  ({ | r' } -> Score) -> Tone -> Tempo -> Sound' r Unit
play f tone tempo = do
  r <- Reader.ask
  let
    score = f $ unwrap r.resource
  liftEffect do
    m <- Ref.read r.ref
    case Map.lookup score m of
      Just _ -> log "resume"
      Nothing -> do
        now <- currentTime r.ctx
        g <- createGain r.ctx
        dest <- destination r.ctx
        connect g dest
        oscs <- prepareOscillators r.ctx g score
        ---
        gainP <- gain g
        void $ setValueAtTime (defaultGain tone) now gainP
        ---
        freqParams <- traverse frequency oscs
        forWithIndex_ score \i ->
          zipWithMaybeA
            ( case _, _ of
                Just freqP, Just note -> void $ setValueAtTime (toFreq note) (startTime now i) freqP
                Just freqP, Nothing -> void $ setValueAtTime 0.0 (startTime now i) freqP
                Nothing, _ -> error "unreachable"
            )
            freqParams
        let
          len = L.length score
        void $ setValueAtTime 0.0 (startTime now len) gainP
        traverse_ (startOscillator now) oscs
        ---
        Ref.write (Map.singleton score oscs) r.ref
        ---
        log "beep"
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

play' ::
  forall r r'.
  Newtype r { | r' } =>
  ({ | r' } -> Score) -> Tone -> Tempo -> Sound' r Unit
play' f tone tempo = do
  stop f
  play f tone tempo

stop ::
  forall r r'.
  Newtype r { | r' } =>
  ({ | r' } -> Score) -> Sound' r Unit
stop f = do
  r <- Reader.ask
  let
    score = f $ unwrap r.resource
  liftEffect do
    m <- Ref.read r.ref
    case Map.lookup score m of
      Just oscs -> do
        now <- currentTime r.ctx
        traverse_ (stopOscillator now) oscs
        let
          nm = Map.delete score m
        Ref.write nm r.ref
        log "stop"
      Nothing -> log "no osc"
