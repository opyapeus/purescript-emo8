module Nemo
  ( nemo
  , nemoDev
  ) where

import Prelude
import Audio.WebAudio.BaseAudioContext (newAudioContext)
import Data.Maybe (Maybe(Just, Nothing))
import Data.Traversable (sequence_)
import Effect (Effect)
import Effect.Timer (setTimeout)
import Graphics.Canvas (getCanvasElementById, getContext2D)
import Nemo.Class.Game (class Game, draw, sound, update)
import Nemo.Constants (canvasId)
import Nemo.Data.Input (pollInputs)
import Nemo.Data.Touch (initTS, margeToInput, pollTouches, upd)
import Nemo.Types (Asset(..), DrawContext(..), SoundContext(..))
import Nemo.Startup (startupView, showStartupViewTime)
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


-- | Run game function for developing. (temporary)
-- | It short cuts startup view.
-- TODO: have more feature with arg like DefConfig.
nemoDev :: forall s. Game s => s -> Asset -> Effect Unit
nemoDev state ass@(Asset asset) = do
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
      let touchState = foldp upd initTS touches
      let margedInputs = map2 margeToInput touchState inputs
      let game = foldp (\i s -> update i s ass) state (sampleOn frames margedInputs)
      runSignal $ rens drawCtx <$> game
      runSignal $ auds soundCtx <$> game
    Nothing -> do
      pure unit
  where
    rens ctx stt = sequence_ $ (draw stt) <*> [ctx] 
    auds ctx stt = sequence_ $ (sound stt) <*> [ctx] 
