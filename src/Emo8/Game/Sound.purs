module Emo8.Game.Sound
  ( Sound'
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
import Data.Newtype (class Newtype, unwrap)
import Data.Traversable (traverse)
import Effect.Class (liftEffect)
import Effect.Class.Console (error)
import Effect.Ref as Ref
import Emo8.Data.Note (toFreq)
import Emo8.Data.Sound (Sound)
import Emo8.Data.Tone (Tone, defaultGain, toOscType)
import Emo8.Parser.Type (Score)
import Emo8.Type (Tempo)
import Emo8.Util.List (zipWithMaybeA)

-- | Emo8 sound monad which does some sound operations.
type Sound' st
  = Sound (SoundContext st)

-- REVIEW: State instead of Ref?
type SoundContext st
  = { ctx :: AudioContext
    , resource :: st
    , ref :: Ref.Ref (Map.Map Score (L.List OscillatorNode))
    }

-- TODO: Map key type
-- | Play the score with the specified accessor, tone and tempo.
-- | 
-- | The operation is ignored until the score being stopped.
play ::
  forall st sr.
  Newtype st { | sr } =>
  ({ | sr } -> Score) -> Tone -> Tempo -> Sound' st Unit
play f tone tempo = do
  r <- Reader.ask
  let
    score = f $ unwrap r.resource
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
play' ::
  forall st sr.
  Newtype st { | sr } =>
  ({ | sr } -> Score) -> Tone -> Tempo -> Sound' st Unit
play' f tone tempo = do
  stop f
  play f tone tempo

-- | Stop playing with the specified score accessor.
stop ::
  forall st sr.
  Newtype st { | sr } =>
  ({ | sr } -> Score) -> Sound' st Unit
stop f = do
  r <- Reader.ask
  let
    score = f $ unwrap r.resource
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
