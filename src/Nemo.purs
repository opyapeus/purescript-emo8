module Nemo
  ( nemo
  , nemoDev
  ) where

import Prelude

import Audio.WebAudio.BaseAudioContext (newAudioContext)
import Data.Maybe (Maybe(Just, Nothing))
import Data.Traversable (sequence_)
import Effect (Effect)
import Effect.Class.Console (log)
import Effect.Timer (setTimeout)
import Graphics.Canvas (getCanvasElementById, getContext2D)
import Nemo.Class.Game (class Game, draw, sound, update)
import Nemo.Constants (canvasId)
import Nemo.Data.Input (pollInputs)
import Nemo.Data.SpecialInput (pollSpecialInputs)
import Nemo.Data.Touch (initTS, margeToInput, pollTouches, upd)
import Nemo.Debug (debugDraw, initialDebugState, providedSave, providedUpdate, updateD, withDebugInput)
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
        frames <- animationFrame
        inputs <- pollInputs
        touches <- pollTouches
        let touchState = foldp upd initTS touches
        let margedInputs = map2 margeToInput touchState inputs
        let game = foldp (\i s -> update i s ass) state (sampleOn frames margedInputs)
        runSignal $ rens drawCtx <$> game
        runSignal $ auds soundCtx <$> game
      pure unit
    Nothing -> do
      pure unit
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

      frames <- animationFrame
      inputs <- pollInputs
      touches <- pollTouches
      specialInputs <- pollSpecialInputs
      let touchState = foldp upd initTS touches
      let mergedInputs = margeToInput <$> touchState <*> inputs
      let debugInput = withDebugInput <$> mergedInputs <*> specialInputs
      let debugState = initialDebugState state
      let game = foldp (\i s -> updateD i s ass) debugState (sampleOn frames debugInput)
      runSignal $ catLog <$> game
      runSignal $ rens drawCtx <$> game
      runSignal $ auds soundCtx <$> game
    Nothing -> do
      pure unit
  where
    catLog ds = providedSave ds $ log $ show ds.state
    rens ctx ds = providedUpdate ds $ sequence_ $ (draw ds.state <> [debugDraw dc ds]) <*> [ctx]
    auds ctx ds = providedUpdate ds $ sequence_ $ (sound ds.state) <*> [ctx]
