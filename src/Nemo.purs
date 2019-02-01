module Nemo
  ( nemo
  , nemoDev
  ) where

import Prelude

import Audio.WebAudio.BaseAudioContext (newAudioContext)
import Data.Int (toNumber)
import Data.Maybe (Maybe(..))
import Data.String (joinWith)
import Effect (Effect)
import Effect.Exception (throw)
import Effect.Timer (setTimeout)
import Graphics.Canvas (CanvasElement, getCanvasElementById, getContext2D, setCanvasHeight, setCanvasWidth)
import Nemo.Class.Game (class Game, draw, sound, update)
import Nemo.Class.GameDev (class GameDev, saveState)
import Nemo.Class.Input (poll)
import Nemo.Constants (canvasId)
import Nemo.Draw.Interpreter (runDraw)
import Nemo.Input (mkInputSig)
import Nemo.Sound.Interpreter (runSound)
import Nemo.Startup (startupView, showStartupViewTime)
import Nemo.Types (Asset, MonitorSize)
import Nemo.Update.Interpreter (runUpdate)
import Signal (runSignal, sampleOn)
import Signal.DOM (animationFrame)
import Signal.Effect (foldEffect)

-- | Run game function.
nemo :: forall s. Game s => s -> Asset -> MonitorSize -> Effect Unit
nemo state asset ms = withCanvas \canvas -> do
  setDim canvas ms
  context <- getContext2D canvas
  audCtx <- newAudioContext
  let drawCtx = { ctx: context, mapData: asset.mapData, monitorSize: ms }
  let soundCtx = { ctx: audCtx, soundData: asset.soundData }

  startupView ms context
  _ <- setTimeout showStartupViewTime $ do
    frameSig <- animationFrame
    keyTouchInputSig <- poll
    let keyTouchInputSampleSig = sampleOn frameSig keyTouchInputSig
    let inputSampleSig = mkInputSig keyTouchInputSampleSig
    stateSig <- foldEffect (\i -> runUpdate asset <<< update i) state inputSampleSig
    runSignal $ runDraw drawCtx <$> draw <$> stateSig
    runSignal $ runSound soundCtx <$> sound <$> stateSig
  pure unit

nemoDev :: forall s. GameDev s => s -> Asset -> MonitorSize -> Effect Unit
nemoDev state asset ms = withCanvas \canvas -> do
  setDim canvas ms
  context <- getContext2D canvas
  audCtx <- newAudioContext
  let drawCtx = { ctx: context, mapData: asset.mapData, monitorSize: ms }
  let soundCtx = { ctx: audCtx, soundData: asset.soundData }

  frameSig <- animationFrame
  keyTouchInputSig <- poll
  let keyTouchInputSampleSig = sampleOn frameSig keyTouchInputSig
  let inputSampleSig = mkInputSig keyTouchInputSampleSig
  stateSig <- foldEffect (\i -> runUpdate asset <<< update i) state inputSampleSig
  runSignal $ runDraw drawCtx <$> draw <$> stateSig
  runSignal $ runSound soundCtx <$> sound <$> stateSig
  runSignal $ saveState <$> stateSig

withCanvas :: (CanvasElement -> Effect Unit) -> Effect Unit
withCanvas op = do
  mCanvas <- getCanvasElementById canvasId
  case mCanvas of
    Just c -> op c
    Nothing -> throw $ joinWith " " ["canvas id:", canvasId, "was not found."]

setDim :: CanvasElement -> MonitorSize -> Effect Unit
setDim canvas ms = do
  setCanvasWidth canvas $ toNumber ms.width
  setCanvasHeight canvas $ toNumber ms.height
