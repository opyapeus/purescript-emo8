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
  forall dr sr dr'.
  Newtype dr { | dr' } =>
  ({ | dr' } -> EmojiMap) -> Update dr sr EmojiMap
getMap f = pure <<< f <<< unwrap =<< getDraw

getMapAll ::
  forall dr sr dr'.
  Newtype dr { | dr' } =>
  Update dr sr { | dr' }
getMapAll = pure <<< unwrap =<< getDraw

setMap ::
  forall dr sr dr' s tail.
  Newtype dr { | dr' } =>
  IsSymbol s =>
  R.Cons s EmojiMap tail dr' =>
  SProxy s -> EmojiMap -> Update dr sr Unit
setMap _ m = do
  d <- getDraw
  let
    f = Record.set (SProxy :: SProxy s) m
  putDraw $ mapN f d

setMapAll ::
  forall dr sr dr'.
  Newtype dr { | dr' } =>
  { | dr' } -> Update dr sr Unit
setMapAll = putDraw <<< wrap

modMap ::
  forall dr sr dr' s tail.
  Newtype dr { | dr' } =>
  IsSymbol s =>
  R.Cons s EmojiMap tail dr' =>
  SProxy s -> (EmojiMap -> EmojiMap) -> Update dr sr Unit
modMap _ f = do
  d <- getDraw
  let
    f' = Record.modify (SProxy :: SProxy s) f
  putDraw $ mapN f' d

modMapAll ::
  forall dr sr dr'.
  Newtype dr { | dr' } =>
  ({ | dr' } -> { | dr' }) -> Update dr sr Unit
modMapAll f = putDraw <<< mapN f =<< getDraw

getScore ::
  forall dr sr sr'.
  Newtype sr { | sr' } =>
  ({ | sr' } -> Score) -> Update dr sr Score
getScore f = pure <<< f <<< unwrap =<< getSound

getScoreAll ::
  forall dr sr sr'.
  Newtype sr { | sr' } =>
  Update dr sr { | sr' }
getScoreAll = pure <<< unwrap =<< getSound

setScore ::
  forall dr sr sr' s tail.
  Newtype sr { | sr' } =>
  IsSymbol s =>
  R.Cons s Score tail sr' =>
  SProxy s -> Score -> Update dr sr Unit
setScore _ m = do
  d <- getSound
  let
    f = Record.set (SProxy :: SProxy s) m
  putSound $ mapN f d

setScoreAll ::
  forall dr sr sr'.
  Newtype sr { | sr' } =>
  { | sr' } -> Update dr sr Unit
setScoreAll = putSound <<< wrap

modScore ::
  forall dr sr sr' s tail.
  Newtype sr { | sr' } =>
  IsSymbol s =>
  R.Cons s Score tail sr' =>
  SProxy s -> (Score -> Score) -> Update dr sr Unit
modScore _ f = do
  d <- getSound
  let
    f' = Record.modify (SProxy :: SProxy s) f
  putSound $ mapN f' d

modScoreAll ::
  forall dr sr sr'.
  Newtype sr { | sr' } =>
  ({ | sr' } -> { | sr' }) -> Update dr sr Unit
modScoreAll f = putSound <<< mapN f =<< getSound

---
isOutOfCanvas :: forall dr sr. Size -> X -> Y -> Update dr sr Boolean
isOutOfCanvas size x y = do
  conf <- getConfig
  pure $ C.isOutOfCanvas conf.canvasSize size x y

isCollideCanvas :: forall dr sr. Size -> X -> Y -> Update dr sr Boolean
isCollideCanvas size x y = do
  conf <- getConfig
  pure $ C.isCollideCanvas conf.canvasSize size x y

isCollideMap ::
  forall dr sr dr'.
  Newtype dr { | dr' } =>
  ({ | dr' } -> EmojiMap) -> Size -> Walls -> Size -> X -> Y -> Update dr sr Boolean
isCollideMap f ms walls size x y = do
  m <- getMap f
  pure $ C.isCollideMap m ms walls size x y
