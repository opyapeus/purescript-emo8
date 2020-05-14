module Emo8
  ( emo8
  , emo8Dev
  ) where

import Prelude
import Audio.WebAudio.BaseAudioContext (newAudioContext)
import Audio.WebAudio.Types (AudioContext, OscillatorNode)
import Data.Int (toNumber)
import Data.List as L
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class.Console (error)
import Effect.Ref (Ref)
import Effect.Ref as Ref
import Emo8.Data.Draw (runDraw)
import Emo8.Data.Input (Input)
import Emo8.Data.Sound (runSound)
import Emo8.Data.Update (runUpdate)
import Emo8.Game (class Game, draw, sound, update)
import Emo8.GameBoot as B
import Emo8.GameDev (class GameDev, saveState)
import Emo8.GameWithBoot (GameWithBoot(..), switchFoldOp, switchOp)
import Emo8.Input (poll)
import Emo8.Input.Merged (mkInput)
import Emo8.Parser.Type (Score)
import Emo8.Type (Config, Rect)
import Graphics.Canvas (CanvasElement, Context2D, getCanvasElementById, getContext2D, setCanvasHeight, setCanvasWidth)
import Signal (foldp, runSignal, sampleOn)
import Signal.DOM (animationFrame)

-- | Run the emo8 game. 
emo8 ::
  forall s.
  Game s =>
  s -> Config -> Effect Unit
emo8 = emo8F run

-- | Run the emo8 game in development mode.
emo8Dev ::
  forall s.
  GameDev s =>
  s -> Config -> Effect Unit
emo8Dev = emo8F runDev

emo8F ::
  forall s.
  Game s =>
  (CanvasElement -> s -> Config -> Effect Unit) ->
  s -> Config -> Effect Unit
emo8F f s conf = do
  mc <- getCanvasElementById canvasId
  case mc of
    Nothing -> error "no canvas"
    Just c -> do
      setCanvasWidth c (toNumber conf.canvasSize.width)
      setCanvasHeight c (toNumber conf.canvasSize.height)
      f c s conf
  where
  canvasId = "emo8"

run ::
  forall s.
  Game s =>
  CanvasElement -> s -> Config -> Effect Unit
run c state conf = do
  dctx <- getContext2D c
  sctx <- newAudioContext
  ref <- Ref.new Map.empty
  frame <- animationFrame
  keySig <- poll
  dirSig <- poll
  let
    inSig = mkInput <$> keySig <*> dirSig

    sig = sampleOn frame inSig

    init = state

    bootInit = B.initialBootState conf.canvasSize

    biState = GameWithBoot init bootInit

    biStateSig =
      foldp
        ( switchFoldOp
            (updateF conf.canvasSize)
            (updateF conf.canvasSize)
        )
        biState
        sig
  runSignal
    $ switchOp
        (drawF dctx conf.canvasSize)
        (drawF dctx conf.canvasSize)
    <$> biStateSig
  runSignal
    $ switchOp
        (soundF sctx ref)
        (soundF sctx ref)
    <$> biStateSig

runDev ::
  forall s.
  GameDev s =>
  CanvasElement -> s -> Config -> Effect Unit
runDev c state conf = do
  dctx <- getContext2D c
  sctx <- newAudioContext
  ref <- Ref.new Map.empty
  frame <- animationFrame
  keySig <- poll
  dirSig <- poll
  let
    inSig = mkInput <$> keySig <*> dirSig

    sig = sampleOn frame inSig

    init = state

    stSig = foldp (updateF conf.canvasSize) init sig
  runSignal $ drawF dctx conf.canvasSize <$> stSig
  runSignal $ soundF sctx ref <$> stSig
  runSignal $ saveState <$> stSig

updateF ::
  forall s.
  Game s =>
  Rect -> Input -> s -> s
updateF rect i s = runUpdate (update i s) { canvasSize: rect }

drawF ::
  forall s.
  Game s =>
  Context2D -> Rect -> s -> Effect Unit
drawF ctx rect s = runDraw (draw s) { ctx: ctx, canvasSize: rect }

soundF ::
  forall s.
  Game s =>
  AudioContext -> Ref (Map.Map Score (L.List OscillatorNode)) -> s -> Effect Unit
soundF ctx ref s = runSound (sound s) { ctx: ctx, ref: ref }
