module Helper where

import Prelude
import Class.Object (class Object, position, size)
import Constants (mapSize)
import Data.Player (Player(..))
import Emo8.Data.Update (Update)
import Emo8.Game.Update (isCollideCanvas)
import Emo8.Util.Config (defaultConfig)

beInMonitor :: forall a dt st. Object a => a -> Player -> Update dt st Player
beInMonitor p np@(Player ns) = do
  isCollX <- isCollideCanvas size' npos.x pos.y
  isCollY <- isCollideCanvas size' pos.x npos.y
  let
    npx = case isCollX, (npos.x < pos.x) of
      true, true -> 0
      true, false -> defaultConfig.canvasSize.width - size'
      _, _ -> npos.x
  let
    npy = case isCollY, (npos.y < pos.y) of
      true, true -> 0
      true, false -> defaultConfig.canvasSize.height - size'
      _, _ -> npos.y
  pure <<< Player $ ns { pos = { x: npx, y: npy } }
  where
  size' = size np

  pos = position p

  npos = position np

mapTileWidth :: Int
mapTileWidth = 64

mapWidth :: Int
mapWidth = mapSize * mapTileWidth

mapTileInMonitor :: Int
mapTileInMonitor = defaultConfig.canvasSize.width / mapSize
