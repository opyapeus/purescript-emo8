module Emo8.Game.Update
  ( Update'
  , UpdateContext
  , isOutOfCanvas
  , isCollideCanvas
  ) where

import Prelude
import Control.Monad.Reader as Reader
import Emo8.Data.Update (Update)
import Emo8.Type (Rect, Size, X, Y)
import Emo8.Util.Collide as C

-- | Emo8 update monad which can access draw and sound resources.
type Update'
  = Update UpdateContext

type UpdateContext
  = { canvasSize :: Rect
    }

-- | Check if the object is outside the canvas.
-- |
-- | The origin of x and y is the bottom left.
isOutOfCanvas :: Size -> X -> Y -> Update' Boolean
isOutOfCanvas size x y = do
  conf <- Reader.ask
  pure $ C.isOutOfCanvas conf.canvasSize size x y

-- | Check if the object collides the frame of the canvas.
isCollideCanvas :: Size -> X -> Y -> Update' Boolean
isCollideCanvas size x y = do
  conf <- Reader.ask
  pure $ C.isCollideCanvas conf.canvasSize size x y
