module Nemo
  ( nemo
  , nemoDev
  ) where

import Prelude

import Audio.WebAudio.BaseAudioContext (newAudioContext)
import Data.Maybe (Maybe(Just, Nothing))
import Data.String (joinWith)
import Data.Traversable (sequence_)
import Effect (Effect)
import Effect.Class.Console (log)
import Effect.Exception (throw)
import Effect.Timer (setTimeout)
import Graphics.Canvas (getCanvasElementById, getContext2D)
import Nemo.Class.Game (class Game, draw, sound, update)
import Nemo.Constants (canvasId)
import Nemo.Data.Input (pollInputs)
import Nemo.Data.SpecialInput (pollSpecialInputs)
import Nemo.Data.Touch (initialTouchState, mergeToInput, pollTouches, updateTouchState)
import Nemo.Debug (debugDraw, initDebugState, providedSave, providedUpdate, updateDebugState, withDebugInput)
import Nemo.Startup (startupView, showStartupViewTime)
import Nemo.Types (Asset(..), DrawContext(..), SoundContext(..), DebugConfig)
import Signal (foldp, map2, runSignal, sampleOn)
import Signal.DOM (animationFrame)

-- | Run game function.
nemo :: forall s. Game s => s -> Asset -> Effect Unit
nemo state ass@(Asset asset) = do
  mcanvas <- getCanvasElementById canvasId
  case mcanvas of
    Just canvas -> do
      context <- getContext2D canvas
      audCtx <- newAudioContext
      let drawCtx = DrawContext { ctx: context, mapData: asset.mapData }
      let soundCtx = SoundContext { ctx: audCtx, soundData: asset.soundData }

      startupView context
      _ <- setTimeout showStartupViewTime $ do
        frameSig <- animationFrame
        inputSig <- pollInputs
        toucheSig <- pollTouches
        let touchStateSig = foldp updateTouchState initialTouchState toucheSig
        let mergedInputSig = map2 mergeToInput touchStateSig inputSig
        let stateSig = foldp (\i s -> update i s ass) state (sampleOn frameSig mergedInputSig)
        runSignal $ rens drawCtx <$> stateSig
        runSignal $ auds soundCtx <$> stateSig
      pure unit
    Nothing -> throw $ joinWith " " ["canvas id:", canvasId, "was not found."]
  where
    rens ctx stt = sequence_ $ (draw stt) <*> [ctx] 
    auds ctx stt = sequence_ $ (sound stt) <*> [ctx] 



-- | Run game function for developing.
-- | It short cuts startup view.
nemoDev :: forall s. Show s => Game s => s -> Asset -> DebugConfig -> Effect Unit
nemoDev state ass@(Asset asset) dc = do
  mcanvas <- getCanvasElementById canvasId
  case mcanvas of
    Just canvas -> do
      context <- getContext2D canvas
      audCtx <- newAudioContext
      let drawCtx = DrawContext { ctx: context, mapData: asset.mapData }
      let soundCtx = SoundContext { ctx: audCtx, soundData: asset.soundData }

      frameSigs <- animationFrame
      inputSig <- pollInputs
      toucheSig <- pollTouches
      specialInputSig <- pollSpecialInputs
      let touchStateSig = foldp updateTouchState initialTouchState toucheSig
      let mergedInputSig = mergeToInput <$> touchStateSig <*> inputSig
      let debugInputSig = withDebugInput <$> mergedInputSig <*> specialInputSig
      let initialDebugState = initDebugState state
      let debugStateSig = foldp (\i s -> updateDebugState i s ass) initialDebugState (sampleOn frameSigs debugInputSig)
      runSignal $ catLog <$> debugStateSig
      runSignal $ rens drawCtx <$> debugStateSig
      runSignal $ auds soundCtx <$> debugStateSig
    Nothing -> throw $ joinWith " " ["canvas id:", canvasId, "was not found."]
  where
    catLog ds = providedSave ds $ log $ show ds.state
    rens ctx ds = providedUpdate ds $ sequence_ $ (draw ds.state <> [debugDraw dc ds]) <*> [ctx]
    auds ctx ds = providedUpdate ds $ sequence_ $ (sound ds.state) <*> [ctx]
