module Emo8.Data.Color where

data Color
  = White | Silver | Gray | Black
  | Red | Maroon | Yellow | Olive
  | Lime | Green | Aqua | Teal
  | Blue | Navy | Fuchsia | Purple

colorToCode :: Color -> String
colorToCode White = "#FFFFFF"
colorToCode Silver = "#C0C0C0"
colorToCode Gray = "#808080"
colorToCode Black = "#000000"
colorToCode Red = "#FF0000"
colorToCode Maroon = "#800000"
colorToCode Yellow = "#FFFF00"
colorToCode Olive = "#808000"
colorToCode Lime = "#00FF00"
colorToCode Green = "#008000"
colorToCode Aqua = "#00FFFF"
colorToCode Teal = "#008080"
colorToCode Blue = "#0000FF"
colorToCode Navy = "#000080"
colorToCode Fuchsia = "#FF00FF"
colorToCode Purple = "#800080"
