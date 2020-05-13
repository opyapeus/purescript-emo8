module Emo8.Game.Update
  ( Update'
  , getMap
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

-- | Emo8 update monad which can access draw and sound resources.
type Update'
  = Update

-- | Get the emoji map with the specified accessor.
getMap ::
  forall dt st dr.
  Newtype dt { | dr } =>
  ({ | dr } -> EmojiMap) -> Update' dt st EmojiMap
getMap f = pure <<< f <<< unwrap =<< getDraw

-- | Get all the emoji maps.
getMapAll ::
  forall dt st dr.
  Newtype dt { | dr } =>
  Update' dt st { | dr }
getMapAll = pure <<< unwrap =<< getDraw

-- | Set all the emoji maps.
setMapAll ::
  forall dt st dr.
  Newtype dt { | dr } =>
  { | dr } -> Update' dt st Unit
setMapAll = putDraw <<< wrap

-- | Modify all the emoji maps.
modMapAll ::
  forall dt st dr.
  Newtype dt { | dr } =>
  ({ | dr } -> { | dr }) -> Update' dt st Unit
modMapAll f = putDraw <<< mapN f =<< getDraw

-- | Get the score with the specified accessor.
getScore ::
  forall dt st sr.
  Newtype st { | sr } =>
  ({ | sr } -> Score) -> Update' dt st Score
getScore f = pure <<< f <<< unwrap =<< getSound

-- | Get all the scores.
getScoreAll ::
  forall dt st sr.
  Newtype st { | sr } =>
  Update' dt st { | sr }
getScoreAll = pure <<< unwrap =<< getSound

-- | Set all the scores.
setScoreAll ::
  forall dt st sr.
  Newtype st { | sr } =>
  { | sr } -> Update' dt st Unit
setScoreAll = putSound <<< wrap

-- | Modify all the scores.
modScoreAll ::
  forall dt st sr.
  Newtype st { | sr } =>
  ({ | sr } -> { | sr }) -> Update' dt st Unit
modScoreAll f = putSound <<< mapN f =<< getSound

-- | Check if the object is outside the canvas.
-- |
-- | The origin of x and y is the bottom left.
isOutOfCanvas :: forall dt st. Size -> X -> Y -> Update' dt st Boolean
isOutOfCanvas size x y = do
  conf <- getConfig
  pure $ C.isOutOfCanvas conf.canvasSize size x y

-- | Check if the object collides the frame of the canvas.
isCollideCanvas :: forall dt st. Size -> X -> Y -> Update' dt st Boolean
isCollideCanvas size x y = do
  conf <- getConfig
  pure $ C.isCollideCanvas conf.canvasSize size x y

-- | Check if the object collides the map with the specified accessor, map size, walls, object size, x and y.
-- |
-- | The walls are emojis collidable in a certain map.
isCollideMap ::
  forall dt st dr.
  Newtype dt { | dr } =>
  ({ | dr } -> EmojiMap) -> Size -> Walls -> Size -> X -> Y -> Update' dt st Boolean
isCollideMap f ms walls size x y = do
  m <- getMap f
  pure $ C.isCollideMap m ms walls size x y
