-- NOTE: separated this module from Emo8.SoundUtil because "ReferenceError: window is not defined" occurs from Signal.DOM when test.
module Emo8.SoundByUserGesture where

import Prelude

import Audio.WebAudio.BaseAudioContext (resume)
import Audio.WebAudio.Types (AudioContext)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Emo8.Data.KeyTouchInput (KeyTouchInput, anyKeyTouch)
import Signal (Signal, foldp)

-- NOTE: it must be resumed after a user gesture on the page
-- REVIEW: refactor
resumeByUserGestureOnce :: AudioContext -> Signal KeyTouchInput -> Signal (Effect Unit)
resumeByUserGestureOnce ctx sig =
  (\s -> case s of
    Just false -> pure unit
    _ -> resume ctx -- NOTE: resume Nothing case also for reliable activation
  ) <$> foldp upd Nothing sig
  where
    upd i Nothing = if anyKeyTouch i then Just true else Nothing
    upd _ (Just true) = Just false
    upd _ (Just false) = Just false
