module Nemo
  ( nemo
  , nemoDev
  ) where

import Prelude

import Audio.WebAudio.BaseAudioContext (newAudioContext)
import Data.Maybe (Maybe(..))
import Data.String (joinWith)
import Effect (Effect)
import Effect.Class.Console (log)
import Effect.Exception (throw)
import Effect.Timer (setTimeout)
import Graphics.Canvas (getCanvasElementById, getContext2D)
import Nemo.Class.Game (class Game, draw, sound, update)
import Nemo.Constants (canvasId)
import Nemo.Data.SpecialInput (pollSpecialInputs)
import Nemo.Debug (debugDraw, initDebugState, providedSave, providedUpdate, updateDebugState, withDebugInput)
import Nemo.Draw.Interpreter (runDraw)
import Nemo.Input (mkInputSig, pollKeyTouchInput)
import Nemo.Sound.Interpreter (runSound)
import Nemo.Startup (startupView, showStartupViewTime)
import Nemo.Types (Asset, DebugConfig)
import Signal (runSignal, sampleOn)
import Signal.DOM (animationFrame)
import Signal.Effect (foldEffect)

-- | Run game function.
nemo :: forall s. Game s => s -> Asset -> Effect Unit
nemo state asset = do
  mcanvas <- getCanvasElementById canvasId
  case mcanvas of
    Just canvas -> do
      context <- getContext2D canvas
      audCtx <- newAudioContext
      let drawCtx = { ctx: context, mapData: asset.mapData }
      let soundCtx = { ctx: audCtx, soundData: asset.soundData }

      startupView context
      _ <- setTimeout showStartupViewTime $ do
        frameSig <- animationFrame
        keyTouchInputSig <- pollKeyTouchInput
        let keyTouchInputSampleSig = sampleOn frameSig keyTouchInputSig
        let inputSampleSig = mkInputSig keyTouchInputSampleSig
        stateSig <- foldEffect (update asset) state inputSampleSig
        runSignal $ runDraw drawCtx <$> draw <$> stateSig
        runSignal $ runSound soundCtx <$> sound <$> stateSig
      pure unit
    Nothing -> throw $ joinWith " " ["canvas id:", canvasId, "was not found."]

-- | Run game function for developing.
-- | It short cuts startup view.
nemoDev :: forall s. Show s => Game s => s -> Asset -> DebugConfig -> Effect Unit
nemoDev state asset dc = do
  mcanvas <- getCanvasElementById canvasId
  case mcanvas of
    Just canvas -> do
      context <- getContext2D canvas
      audCtx <- newAudioContext
      let drawCtx = { ctx: context, mapData: asset.mapData }
      let soundCtx = { ctx: audCtx, soundData: asset.soundData }

      -- NOTE: frame signal is always continuing (also when suspended)
      -- ENHANCE: stop frame implementation when suspended
      frameSig <- animationFrame
      keyTouchInputSig <- pollKeyTouchInput
      let keyTouchInputSampleSig = sampleOn frameSig keyTouchInputSig
      let inputSampleSig = mkInputSig keyTouchInputSampleSig
      specialInputSig <- pollSpecialInputs
      let debugInputSampleSig = withDebugInput <$> inputSampleSig <*> specialInputSig
      let initialDebugState = initDebugState state
      debugStateSig <- foldEffect (updateDebugState asset) initialDebugState debugInputSampleSig
      runSignal $ catLog <$> debugStateSig
      runSignal $ rens drawCtx <$> debugStateSig
      runSignal $ auds soundCtx <$> debugStateSig
    Nothing -> throw $ joinWith " " ["canvas id:", canvasId, "was not found."]
  where
    catLog ds = providedSave ds $ do
      log $ show ds.state
    rens ctx ds = providedUpdate ds $ do
      runDraw ctx $ draw ds.state
      debugDraw dc ds ctx
    auds ctx ds = providedUpdate ds $ do
      runSound ctx $ sound ds.state
