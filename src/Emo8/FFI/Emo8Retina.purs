module Emo8.FFI.Emo8Retina
  ( emo8Retina
  ) where

import Prelude
import Effect (Effect)
import Emo8.Type (Rect)
import Graphics.Canvas (CanvasElement)

foreign import emo8RetinaImpl :: CanvasElement -> Rect -> Effect Unit

emo8Retina :: CanvasElement -> Rect -> Effect Unit
emo8Retina = emo8RetinaImpl
