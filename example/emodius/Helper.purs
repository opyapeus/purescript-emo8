module Helper where

import Prelude
import Asset (stage1, stage2, stage3, stage4, walls)
import Class.Object (class Object, position, size)
import Constants (canvasSize, mapSize)
import Data.Maybe (Maybe(..))
import Data.Player (Player(..))
import Emo8.Game.Draw (Draw, emap)
import Emo8.Game.Update (Update, getCanvasSize)
import Emo8.Util.Collide (isCollideMap, sinkCanvas)

beInMonitor :: Player -> Update Player
beInMonitor player@(Player p) = do
  r <- getCanvasSize
  pure case sinkCanvas r psize ppos.x ppos.y of
    Just sink -> Player $ p { pos { x = ppos.x - sink.x, y = ppos.y - sink.y } }
    Nothing -> player
  where
  ppos = position player

  psize = size player

-- TODO: readable
drawScrollMap :: Int -> Draw Unit
drawScrollMap d = do
  when (mapCond.s1 d)
    $ emapF stage1 0
  when (mapCond.s2 d)
    $ emapF stage2 2048
  when (mapCond.s3 d)
    $ emapF stage3 4096
  when (mapCond.s4 d)
    $ emapF stage4 6144
  where
  emapF a bias =
    emap
      a
      mapSize
      (bias - d)
      0

-- TODO: readable
isCollideScrollMap :: forall a. Object a => Int -> a -> Boolean
isCollideScrollMap d o =
  let
    s1 =
      (mapCond.s1 d)
        && (isCollF stage1 0)

    s2 =
      (mapCond.s2 d)
        && (isCollF stage2 2048)

    s3 =
      (mapCond.s3 d)
        && (isCollF stage3 4096)

    s4 =
      (mapCond.s4 d)
        && (isCollF stage4 6144)
  in
    s1 || s2 || s3 || s4
  where
  isCollF a bias =
    isCollideMap
      a
      mapSize
      walls
      (size o)
      ((position o).x + (d - bias))
      (position o).y

mapCond ::
  { s1 :: Int -> Boolean
  , s2 :: Int -> Boolean
  , s3 :: Int -> Boolean
  , s4 :: Int -> Boolean
  }
mapCond =
  { s1: \d -> d < 2048
  , s2: \d -> 2048 - canvasSize.width <= d && d < 4096
  , s3: \d -> 4096 - canvasSize.width <= d && d < 6144
  , s4: \d -> 6144 - canvasSize.width <= d && d < 8192
  }
