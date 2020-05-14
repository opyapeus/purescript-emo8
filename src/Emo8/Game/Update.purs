module Emo8.Game.Update
  ( Update
  , UpdateContext
  , getCanvasSize
  , isOutOfCanvas
  , isCollideCanvas
  ) where

import Prelude
import Control.Monad.Reader as Reader
import Emo8.Data.Update (UpdateR)
import Emo8.Type (Rect, Size, X, Y)
import Emo8.Util.Collide as C

-- | Emo8 update monad which can access canvas size.
type Update
  = UpdateR UpdateContext

type UpdateContext
  = { canvasSize :: Rect
    }

-- | Get the canvas size given by the `emo8` function.
getCanvasSize :: Update Rect
getCanvasSize = pure <<< _.canvasSize =<< Reader.ask

-- | Check if the object is outside the canvas.
-- |
-- | The origin of x and y is the bottom left.
isOutOfCanvas :: Size -> X -> Y -> Update Boolean
isOutOfCanvas size x y = do
  r <- Reader.ask
  pure $ C.isOutOfCanvas r.canvasSize size x y

-- | Check if the object collides the frame of the canvas.
isCollideCanvas :: Size -> X -> Y -> Update Boolean
isCollideCanvas size x y = do
  r <- Reader.ask
  pure $ C.isCollideCanvas r.canvasSize size x y
