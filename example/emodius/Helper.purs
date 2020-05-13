module Helper where

import Prelude
import Class.Object (class Object, position, size)
import Constants (canvasSize)
import Data.Player (Player(..))
import Emo8.Game.Update (Update', isCollideCanvas)

beInMonitor :: forall a dt st. Object a => a -> Player -> Update' dt st Player
beInMonitor p np@(Player ns) = do
  isCollX <- isCollideCanvas size' npos.x pos.y
  isCollY <- isCollideCanvas size' pos.x npos.y
  let
    npx = case isCollX, (npos.x < pos.x) of
      true, true -> 0
      true, false -> canvasSize.width - size'
      _, _ -> npos.x
  let
    npy = case isCollY, (npos.y < pos.y) of
      true, true -> 0
      true, false -> canvasSize.height - size'
      _, _ -> npos.y
  pure <<< Player $ ns { pos = { x: npx, y: npy } }
  where
  size' = size np

  pos = position p

  npos = position np
