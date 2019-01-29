module Nemo.Startup where

import Prelude

import Data.Int (toNumber)
import Effect (Effect)
import Graphics.Canvas (Context2D, fillRect, fillText, restore, save, setFillStyle, setFont)
import Nemo.Data.Color (Color(..), colorToCode)
import Nemo.Types (MonitorSize)


showStartupViewTime :: Int
showStartupViewTime = 2000

-- TODO: variable position
startupView :: MonitorSize -> Context2D -> Effect Unit
startupView ms ctx = do
  save ctx
  setFillStyle ctx (colorToCode Black)
  fillRect ctx { x: 0.0, y: 0.0, width: toNumber $ ms.width, height: toNumber $ ms.height }
  setFont ctx "bold 256px sans-serif"
  fillText ctx "📦" 384.0 575.0
  setFont ctx "bold 128px sans-serif"
  setFillStyle ctx (colorToCode Lime)
  fillText ctx "N" 300.0 512.0
  setFillStyle ctx (colorToCode Aqua)
  fillText ctx "E" 415.0 512.0
  setFillStyle ctx (colorToCode Fuchsia)
  fillText ctx "M" 515.0 512.0
  setFillStyle ctx (colorToCode Yellow)
  fillText ctx "O" 640.0 512.0
  setFont ctx "64px sans-serif"
  setFillStyle ctx (colorToCode White)
  fillText ctx "Powered by Creativity" 180.0 700.0
  restore ctx