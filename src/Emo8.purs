module Emo8
  ( emo8
  , emo8Dev
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
import Emo8.Class.Game (class Game, draw, sound, update)
import Emo8.Class.GameDev (class GameDev, saveState)
import Emo8.Class.Input (poll)
import Emo8.Constants (canvasId)
import Emo8.Draw.Interpreter (runDraw)
import Emo8.Input (mkInputSig)
import Emo8.Sound.Interpreter (runSound)
import Emo8.Startup (startupView, showStartupViewTime)
import Emo8.Types (Asset, MonitorSize)
import Emo8.Update.Interpreter (runUpdate)
import Signal (runSignal, sampleOn)
import Signal.DOM (animationFrame)
import Signal.Effect (foldEffect)

-- | Run game function.
emo8 :: forall s. Game s => s -> Asset -> MonitorSize -> Effect Unit
emo8 state asset ms = withCanvas \canvas -> do
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

emo8Dev :: forall s. GameDev s => s -> Asset -> MonitorSize -> Effect Unit
emo8Dev state asset ms = withCanvas \canvas -> do
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
