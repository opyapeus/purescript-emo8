module Nemo.Startup where

import Prelude

import Data.Int (toNumber)
import Effect (Effect)
import Graphics.Canvas (Context2D, fillRect, fillText, restore, save, setFillStyle, setFont)
import Nemo.Constants (scene)
import Nemo.Data.Color (Color(..), colorToCode)


showStartupViewTime :: Int
showStartupViewTime = 2000

startupView :: Context2D -> Effect Unit
startupView ctx = do
  save ctx
  setFillStyle ctx (colorToCode Black)
  fillRect ctx { x: 0.0, y: 0.0, width: toNumber $ scene.width, height: toNumber $ scene.height }
  setFont ctx "bold 128px sans-serif"
  setFillStyle ctx (colorToCode Lime)
  fillText ctx "N" 300.0 544.0
  setFillStyle ctx (colorToCode Aqua)
  fillText ctx "E" 415.0 544.0
  setFillStyle ctx (colorToCode Fuchsia)
  fillText ctx "M" 515.0 544.0
  setFillStyle ctx (colorToCode Yellow)
  fillText ctx "O" 640.0 544.0
  setFont ctx "64px sans-serif"
  setFillStyle ctx (colorToCode White)
  fillText ctx "HAVE FUN!" 350.0 700.0
  restore ctx