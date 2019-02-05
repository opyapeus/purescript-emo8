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
import Emo8.Boot (bootRawSound, initialState)
import Emo8.Class.Game (class Game, draw, sound, update)
import Emo8.Class.GameDev (class GameDev, saveState)
import Emo8.Class.Input (poll)
import Emo8.Constants (canvasId)
import Emo8.Data.GameWithBoot (GameWithBoot(..), switchFoldOp, switchOp)
import Emo8.Input (mkInputSig)
import Emo8.Interpreter.Draw (runDraw)
import Emo8.Interpreter.Sound (runSound)
import Emo8.Interpreter.Update (runUpdate)
import Emo8.SoundUtil (mkChannelSets, prepareSound, resumeByUserGestureOnce)
import Emo8.Types (Asset, MonitorSize)
import Emo8.Utils (mkAsset)
import Graphics.Canvas (CanvasElement, getCanvasElementById, getContext2D, setCanvasHeight, setCanvasWidth)
import Signal (runSignal, sampleOn)
import Signal.DOM (animationFrame)
import Signal.Effect (foldEffect)

-- | Run game function.
emo8 :: forall s. Game s => s -> Asset -> MonitorSize -> Effect Unit
emo8 state asset ms = withCanvas \canvas -> do
  setDim canvas ms
  context <- getContext2D canvas
  audCtx <- newAudioContext
  chSets <- mkChannelSets audCtx
  bootAsset <- mkAsset [] [bootRawSound]
  let drawCtx = { ctx: context, mapData: asset.mapData, monitorSize: ms }
      soundCtx = { ctx: audCtx, soundData: asset.soundData, channelSets: chSets }
      bootState = initialState ms
      bootDrawCtx = { ctx: context, mapData: bootAsset.mapData, monitorSize: ms }
      bootSoundCtx = { ctx: audCtx, soundData: bootAsset.soundData, channelSets: chSets }

  frameSig <- animationFrame
  keyTouchInputSig <- poll
  let keyTouchInputSampleSig = sampleOn frameSig keyTouchInputSig
      inputSampleSig = mkInputSig keyTouchInputSampleSig
      biState = GameWithBoot state bootState 
  biStateSig <- foldEffect
    ( switchFoldOp
      (\i -> runUpdate asset <<< update i)
      (\i -> runUpdate bootAsset <<< update i)
    )
    biState
    inputSampleSig
  runSignal $ switchOp
    (runDraw drawCtx <<< draw)
    (runDraw bootDrawCtx <<< draw)
    biStateSig
  runSignal $ switchOp
    (runSound soundCtx <<< sound)
    (runSound bootSoundCtx <<< sound)
    biStateSig

  runSignal $ resumeByUserGestureOnce audCtx keyTouchInputSig
  prepareSound chSets audCtx

emo8Dev :: forall s. GameDev s => s -> Asset -> MonitorSize -> Effect Unit
emo8Dev state asset ms = withCanvas \canvas -> do
  setDim canvas ms
  context <- getContext2D canvas
  audCtx <- newAudioContext
  chSets <- mkChannelSets audCtx
  let drawCtx = { ctx: context, mapData: asset.mapData, monitorSize: ms }
      soundCtx = { ctx: audCtx, soundData: asset.soundData, channelSets: chSets }

  frameSig <- animationFrame
  keyTouchInputSig <- poll
  let keyTouchInputSampleSig = sampleOn frameSig keyTouchInputSig
      inputSampleSig = mkInputSig keyTouchInputSampleSig
  stateSig <- foldEffect (\i -> runUpdate asset <<< update i) state inputSampleSig
  runSignal $ runDraw drawCtx <<< draw <$> stateSig
  runSignal $ runSound soundCtx <<< sound <$> stateSig
  runSignal $ saveState <$> stateSig

  runSignal $ resumeByUserGestureOnce audCtx keyTouchInputSig
  prepareSound chSets audCtx

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
