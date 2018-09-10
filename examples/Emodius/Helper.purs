module Helper where

import Prelude

import Class.Object (class Object, position, size)
import Collision (isCollMap, isCollWorld)
import Constants (mapSize)
import Data.Player (Player(..))
import Nemo.Constants (scene)
import Nemo.Input (Input)
import Nemo.Draw (emap)
import Nemo.Types (Asset, MapId, RenderOp, X)

beInMonitor :: Player -> Player -> Player
beInMonitor p np@(Player ns) = Player $ ns { pos = { x: npx, y: npy } }
    where
        size' = size np
        pos = position p
        npos = position np
        isCollX = isCollWorld size' { x: npos.x, y: pos.y }
        isCollY = isCollWorld size' { x: pos.x, y: npos.y }
        npx = case isCollX, (npos.x < pos.x) of
            true, true -> 0
            true, false -> scene.width - size'
            _, _ -> npos.x
        npy = case isCollY, (npos.y < pos.y) of
            true, true -> 0
            true, false -> scene.height - size'
            _, _ -> npos.y

mapTileWidth :: Int
mapTileWidth = 64
mapWidth :: Int
mapWidth = mapSize * mapTileWidth
mapTileInMonitor :: Int
mapTileInMonitor = scene.width / mapSize

-- TODO: readable
drawScrollMap :: X -> RenderOp
drawScrollMap distance = \ctx -> do
    drawCond 0 0 distance ctx
    drawCond 1 1 distance ctx
    drawCond 2 2 distance ctx
    drawCond 3 3 distance ctx
    where
        drawCond :: MapId -> Int -> X -> RenderOp
        drawCond mId num d ctx =
            if base - mapSize * mapTileInMonitor <= d && d < base + mapWidth 
                then emap mId mapSize (base - d) 0 ctx
                else pure unit
            where
                base = num * mapWidth

-- TODO: readable
isCollideScrollMap :: forall a. Object a => Asset -> X -> a -> Boolean
isCollideScrollMap ass distance o
    = collCond 0 0 distance
    || collCond 1 1 distance
    || collCond 2 2 distance
    || collCond 3 3 distance
    where
        collCond :: MapId -> Int -> X -> Boolean
        collCond mId num d =
            if base - mapSize * mapTileInMonitor <= d && d < base + mapWidth 
                then isCollMap ass mId mapSize (size o) { x: (position o).x + (d - base), y: (position o).y }
                else false
            where
                base = num * mapWidth

isInputAny :: Input -> Boolean
isInputAny i
    = i.isW || i.isS || i.isA || i.isD
    || i.isUp || i.isDown || i.isLeft || i.isRight 