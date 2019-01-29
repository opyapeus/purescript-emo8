module Nemo.Startup where

import Prelude

import Data.Int (floor, toNumber)
import Data.String (joinWith)
import Effect (Effect)
import Graphics.Canvas (Context2D, fillRect, fillText, restore, save, setFillStyle, setFont)
import Nemo.Constants (fontFamily)
import Nemo.Data.Color (Color(..), colorToCode)
import Nemo.Types (MonitorSize, Size)


showStartupViewTime :: Int
showStartupViewTime = 2000

startupView :: MonitorSize -> Context2D -> Effect Unit
startupView ms ctx = do
  save ctx
  setFillStyle ctx (colorToCode Black)
  fillRect ctx { x: 0.0, y: 0.0, width: toNumber $ ms.width, height: toNumber $ ms.height }
  setFont ctx $ sizeToFontBold (sizeRatio 0.25)
  fillText ctx "📦" (xRatio 0.375) (yRatio 0.55)
  setFont ctx $ sizeToFontBold (sizeRatio 0.125)
  setFillStyle ctx (colorToCode Lime)
  fillText ctx "N" (xRatio 0.3) (yRatio 0.5)
  setFillStyle ctx (colorToCode Aqua)
  fillText ctx "E" (xRatio 0.42) (yRatio 0.5)
  setFillStyle ctx (colorToCode Fuchsia)
  fillText ctx "M" (xRatio 0.52) (yRatio 0.5)
  setFillStyle ctx (colorToCode Yellow)
  fillText ctx "O" (xRatio 0.65) (yRatio 0.5)
  restore ctx
  where
    w = toNumber ms.width
    h = toNumber ms.height
    isWide = w > h
    xRatio r = if isWide
      then let xBias = (w - h) / 2.0 in h * r + xBias
      else w * r
    yRatio r = if isWide
      then h * r
      else let yBias = (h - w) / 2.0 in w * r + yBias 
    sizeRatio r = floor $
      if isWide then h * r else w * r

-- TODO: DRY
sizeToFontBold :: Size -> String
sizeToFontBold px = joinWith " " ["bold", fontSize, fontFamily]
  where fontSize = show px <> "px"
