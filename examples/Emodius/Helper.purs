module Helper where

import Prelude

import Class.Object (class Object, position, size)
import Collision (isCollMap, isCollWorld)
import Constants (mapSize)
import Data.Player (Player(..))
import Emo8.Draw.Action (Draw, emap)
import Emo8.Input (Input)
import Emo8.Types (MapId, X)
import Emo8.Update.Action (Update)
import Emo8.Utils (defaultMonitorSize)

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
            true, false -> defaultMonitorSize.width - size'
            _, _ -> npos.x
        npy = case isCollY, (npos.y < pos.y) of
            true, true -> 0
            true, false -> defaultMonitorSize.height - size'
            _, _ -> npos.y

mapTileWidth :: Int
mapTileWidth = 64
mapWidth :: Int
mapWidth = mapSize * mapTileWidth
mapTileInMonitor :: Int
mapTileInMonitor = defaultMonitorSize.width / mapSize

-- TODO: readable
drawScrollMap :: X -> Draw Unit
drawScrollMap distance = do
    drawCond 0 0 distance
    drawCond 1 1 distance
    drawCond 2 2 distance
    drawCond 3 3 distance
    where
        drawCond :: MapId -> Int -> X -> Draw Unit
        drawCond mId num d = do
            when (base - mapSize * mapTileInMonitor <= d && d < base + mapWidth) $
                emap mId mapSize (base - d) 0
            where
                base = num * mapWidth

-- TODO: readable
isCollideScrollMap :: forall a. Object a => X -> a -> Update Boolean
isCollideScrollMap distance o =
    (\a b c d -> a || b || c || d)
        <$> collCond 0 0 distance
        <*> collCond 1 1 distance
        <*> collCond 2 2 distance
        <*> collCond 3 3 distance
    where
        collCond :: MapId -> Int -> X -> Update Boolean
        collCond mId num d = do
            if (base - mapSize * mapTileInMonitor <= d && d < base + mapWidth)
                then isCollMap mId mapSize (size o) { x: (position o).x + (d - base), y: (position o).y }
                else pure false
            where
                base = num * mapWidth

isInputCatchAny :: Input -> Boolean
isInputCatchAny i
    = i.catched.isW || i.catched.isS || i.catched.isA || i.catched.isD
   || i.catched.isUp || i.catched.isDown || i.catched.isLeft || i.catched.isRight
