module Emo8.Game.Update
  ( getMap
  , getMapAll
  , setMapAll
  , modMapAll
  , getScore
  , getScoreAll
  , setScoreAll
  , modScoreAll
  , isOutOfCanvas
  , isCollideCanvas
  , isCollideMap
  ) where

import Prelude
import Data.Newtype (class Newtype, unwrap, wrap)
import Emo8.Data.Update (Update, getConfig, getDraw, getSound, putDraw, putSound)
import Emo8.Parser.Type (EmojiMap, Score)
import Emo8.Type (Size, X, Y, Walls)
import Emo8.Util.Collide as C
import Emo8.Util.Newtype (mapN)

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

setMapAll ::
  forall dt st dr.
  Newtype dt { | dr } =>
  { | dr } -> Update dt st Unit
setMapAll = putDraw <<< wrap

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

setScoreAll ::
  forall dt st sr.
  Newtype st { | sr } =>
  { | sr } -> Update dt st Unit
setScoreAll = putSound <<< wrap

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
