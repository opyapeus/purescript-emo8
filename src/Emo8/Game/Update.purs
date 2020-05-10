module Emo8.Game.Update
  ( getMap
  , getMapAll
  , setMap
  , setMapAll
  , modMap
  , modMapAll
  , getScore
  , getScoreAll
  , setScore
  , setScoreAll
  , modScore
  , modScoreAll
  , isOutOfCanvas
  , isCollideCanvas
  , isCollideMap
  ) where

import Prelude
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.Symbol (class IsSymbol, SProxy(..))
import Emo8.Data.Update (Update, getConfig, getDraw, getSound, putDraw, putSound)
import Emo8.Parser.Type (EmojiMap, Score)
import Emo8.Type (Size, X, Y, Walls)
import Emo8.Util.Collide as C
import Emo8.Util.Newtype (mapN)
import Prim.Row as R
import Record as Record

getMap ::
  forall dt st dr.
  Newtype dt { | dr } =>
  ({ | dr } -> EmojiMap) -> Update dt st EmojiMap
getMap f = pure <<< f <<< unwrap =<< getDraw

getMapAll ::
  forall dt st dr.
  Newtype dt { | dr } =>
  Update dt st { | dr }
getMapAll = pure <<< unwrap =<< getDraw

setMap ::
  forall dt st dr s tail.
  Newtype dt { | dr } =>
  IsSymbol s =>
  R.Cons s EmojiMap tail dr =>
  SProxy s -> EmojiMap -> Update dt st Unit
setMap _ m = do
  d <- getDraw
  let
    f = Record.set (SProxy :: SProxy s) m
  putDraw $ mapN f d

setMapAll ::
  forall dt st dr.
  Newtype dt { | dr } =>
  { | dr } -> Update dt st Unit
setMapAll = putDraw <<< wrap

modMap ::
  forall dt st dr s tail.
  Newtype dt { | dr } =>
  IsSymbol s =>
  R.Cons s EmojiMap tail dr =>
  SProxy s -> (EmojiMap -> EmojiMap) -> Update dt st Unit
modMap _ f = do
  d <- getDraw
  let
    f' = Record.modify (SProxy :: SProxy s) f
  putDraw $ mapN f' d

modMapAll ::
  forall dt st dr.
  Newtype dt { | dr } =>
  ({ | dr } -> { | dr }) -> Update dt st Unit
modMapAll f = putDraw <<< mapN f =<< getDraw

getScore ::
  forall dt st sr.
  Newtype st { | sr } =>
  ({ | sr } -> Score) -> Update dt st Score
getScore f = pure <<< f <<< unwrap =<< getSound

getScoreAll ::
  forall dt st sr.
  Newtype st { | sr } =>
  Update dt st { | sr }
getScoreAll = pure <<< unwrap =<< getSound

setScore ::
  forall dt st sr s tail.
  Newtype st { | sr } =>
  IsSymbol s =>
  R.Cons s Score tail sr =>
  SProxy s -> Score -> Update dt st Unit
setScore _ m = do
  d <- getSound
  let
    f = Record.set (SProxy :: SProxy s) m
  putSound $ mapN f d

setScoreAll ::
  forall dt st sr.
  Newtype st { | sr } =>
  { | sr } -> Update dt st Unit
setScoreAll = putSound <<< wrap

modScore ::
  forall dt st sr s tail.
  Newtype st { | sr } =>
  IsSymbol s =>
  R.Cons s Score tail sr =>
  SProxy s -> (Score -> Score) -> Update dt st Unit
modScore _ f = do
  d <- getSound
  let
    f' = Record.modify (SProxy :: SProxy s) f
  putSound $ mapN f' d

modScoreAll ::
  forall dt st sr.
  Newtype st { | sr } =>
  ({ | sr } -> { | sr }) -> Update dt st Unit
modScoreAll f = putSound <<< mapN f =<< getSound

---
isOutOfCanvas :: forall dt st. Size -> X -> Y -> Update dt st Boolean
isOutOfCanvas size x y = do
  conf <- getConfig
  pure $ C.isOutOfCanvas conf.canvasSize size x y

isCollideCanvas :: forall dt st. Size -> X -> Y -> Update dt st Boolean
isCollideCanvas size x y = do
  conf <- getConfig
  pure $ C.isCollideCanvas conf.canvasSize size x y

isCollideMap ::
  forall dt st dr.
  Newtype dt { | dr } =>
  ({ | dr } -> EmojiMap) -> Size -> Walls -> Size -> X -> Y -> Update dt st Boolean
isCollideMap f ms walls size x y = do
  m <- getMap f
  pure $ C.isCollideMap m ms walls size x y
