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
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Effect.Class.Console (error)
import Effect.Ref (Ref)
import Effect.Ref as Ref
import Emo8.Data.Draw (runDraw)
import Emo8.Data.GameWithBoot (GameWithBoot(..), switchFoldOp, switchOp)
import Emo8.Data.Input (Input)
import Emo8.Data.Sound (runSound)
import Emo8.Data.Update (Resource(..), runUpdate)
import Emo8.Game (class Game, draw, sound, update)
import Emo8.GameBoot as B
import Emo8.GameDev (class GameDev, saveState)
import Emo8.Input (poll)
import Emo8.Input.Merged (mkInput)
import Emo8.Parser.Type (Score)
import Emo8.Type (Config)
import Emo8.Util.Resource (emptyMap)
import Emo8.Util.Type (StateRes)
import Graphics.Canvas (CanvasElement, Context2D, getCanvasElementById, getContext2D, setCanvasHeight, setCanvasWidth)
import Signal (foldp, runSignal, sampleOn)
import Signal.DOM (animationFrame)

emo8 ::
  forall s dt st.
  Game s dt st =>
  s -> dt -> st -> Config -> Effect Unit
emo8 = emo8F run

emo8Dev ::
  forall s dt st.
  GameDev s dt st =>
  s -> dt -> st -> Config -> Effect Unit
emo8Dev = emo8F runDev

emo8F ::
  forall s dt st.
  Game s dt st =>
  (CanvasElement -> s -> dt -> st -> Config -> Effect Unit) ->
  s -> dt -> st -> Config -> Effect Unit
emo8F f s dr sr conf = do
  mc <- getCanvasElementById canvasId
  case mc of
    Nothing -> error "no canvas"
    Just c -> do
      setCanvasWidth c (toNumber conf.canvasSize.width)
      setCanvasHeight c (toNumber conf.canvasSize.height)
      f c s dr sr conf
  where
  canvasId = "emo8"

run ::
  forall s dt st.
  Game s dt st =>
  CanvasElement -> s -> dt -> st -> Config -> Effect Unit
run c state dr sr conf = do
  dctx <- getContext2D c
  sctx <- newAudioContext
  ref <- Ref.new Map.empty
  frame <- animationFrame
  keySig <- poll
  dirSig <- poll
  let
    inSig = mkInput <$> keySig <*> dirSig

    sig = sampleOn frame inSig

    resource = Resource { draw: dr, sound: sr, config: conf }

    bootResource = Resource { draw: emptyMap, sound: B.sr, config: conf }

    init = Tuple state resource

    bootInit = Tuple (B.initialState conf.canvasSize) bootResource

    biState = GameWithBoot init bootInit

    biStateSig =
      foldp
        ( switchFoldOp
            updateF
            updateF
        )
        biState
        sig
  runSignal
    $ switchOp
        (drawF dctx conf)
        (drawF dctx conf)
        biStateSig
  runSignal
    $ switchOp
        (soundF sctx ref)
        (soundF sctx ref)
        biStateSig

runDev ::
  forall s dt st.
  GameDev s dt st =>
  CanvasElement -> s -> dt -> st -> Config -> Effect Unit
runDev c state dr sr conf = do
  dctx <- getContext2D c
  sctx <- newAudioContext
  ref <- Ref.new Map.empty
  frame <- animationFrame
  keySig <- poll
  dirSig <- poll
  let
    inSig = mkInput <$> keySig <*> dirSig

    sig = sampleOn frame inSig

    resource = Resource { draw: dr, sound: sr, config: conf }

    init = Tuple state resource

    stSig = foldp updateF init sig
  runSignal $ drawF dctx conf <$> stSig
  runSignal $ soundF sctx ref <$> stSig
  runSignal $ devF <$> stSig
  where
  devF (Tuple s _) = saveState s

updateF ::
  forall s dt st.
  Game s dt st =>
  Input -> StateRes s dt st -> StateRes s dt st
updateF i (Tuple s r) = runUpdate (update i s) r

drawF ::
  forall s dt st.
  Game s dt st =>
  Context2D -> Config -> StateRes s dt st -> Effect Unit
drawF ctx conf (Tuple s (Resource r)) = runDraw (draw s) { ctx: ctx, resource: r.draw, canvasSize: conf.canvasSize }

soundF ::
  forall s dt st.
  Game s dt st =>
  AudioContext -> Ref (Map.Map Score (L.List OscillatorNode)) -> StateRes s dt st -> Effect Unit
soundF ctx ref (Tuple s (Resource r)) = runSound (sound s) { ctx: ctx, resource: r.sound, ref: ref }
