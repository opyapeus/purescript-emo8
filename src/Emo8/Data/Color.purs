module Emo8.Data.Color where

data Color
  = AliceBlue
  | AntiqueWhite
  | Aqua
  | Aquamarine
  | Azure
  | Beige
  | Bisque
  | Black
  | BlanchedAlmond
  | Blue
  | BlueViolet
  | Brown
  | BurlyWood
  | CadetBlue
  | Chartreuse
  | Chocolate
  | Coral
  | CornflowerBlue
  | Cornsilk
  | Crimson
  | Cyan
  | DarkBlue
  | DarkCyan
  | DarkGoldenRod
  | DarkGray
  | DarkGrey
  | DarkGreen
  | DarkKhaki
  | DarkMagenta
  | DarkOliveGreen
  | DarkOrange
  | DarkOrchid
  | DarkRed
  | DarkSalmon
  | DarkSeaGreen
  | DarkSlateBlue
  | DarkSlateGray
  | DarkSlateGrey
  | DarkTurquoise
  | DarkViolet
  | DeepPink
  | DeepSkyBlue
  | DimGray
  | DimGrey
  | DodgerBlue
  | FireBrick
  | FloralWhite
  | ForestGreen
  | Fuchsia
  | Gainsboro
  | GhostWhite
  | Gold
  | GoldenRod
  | Gray
  | Grey
  | Green
  | GreenYellow
  | HoneyDew
  | HotPink
  | IndianRed 
  | Indigo
  | Ivory
  | Khaki
  | Lavender
  | LavenderBlush
  | LawnGreen
  | LemonChiffon
  | LightBlue
  | LightCoral
  | LightCyan
  | LightGoldenRodYellow
  | LightGray
  | LightGrey
  | LightGreen
  | LightPink
  | LightSalmon
  | LightSeaGreen
  | LightSkyBlue
  | LightSlateGray
  | LightSlateGrey
  | LightSteelBlue
  | LightYellow
  | Lime
  | LimeGreen
  | Linen
  | Magenta
  | Maroon
  | MediumAquaMarine
  | MediumBlue
  | MediumOrchid
  | MediumPurple
  | MediumSeaGreen
  | MediumSlateBlue
  | MediumSpringGreen
  | MediumTurquoise
  | MediumVioletRed
  | MidnightBlue
  | MintCream
  | MistyRose
  | Moccasin
  | NavajoWhite
  | Navy
  | OldLace
  | Olive
  | OliveDrab
  | Orange
  | OrangeRed
  | Orchid
  | PaleGoldenRod
  | PaleGreen
  | PaleTurquoise
  | PaleVioletRed
  | PapayaWhip
  | PeachPuff
  | Peru
  | Pink
  | Plum
  | PowderBlue
  | Purple
  | RebeccaPurple
  | Red
  | RosyBrown
  | RoyalBlue
  | SaddleBrown
  | Salmon
  | SandyBrown
  | SeaGreen
  | SeaShell
  | Sienna
  | Silver
  | SkyBlue
  | SlateBlue
  | SlateGray
  | SlateGrey
  | Snow
  | SpringGreen
  | SteelBlue
  | Tan
  | Teal
  | Thistle
  | Tomato
  | Turquoise
  | Violet
  | Wheat
  | White
  | WhiteSmoke
  | Yellow
  | YellowGreen

colorToCode :: Color -> String
colorToCode AliceBlue = "#F0F8FF"
colorToCode AntiqueWhite = "#FAEBD7"
colorToCode Aqua = "#00FFFF"
colorToCode Aquamarine = "#7FFFD4"
colorToCode Azure = "#F0FFFF"
colorToCode Beige = "#F5F5DC"
colorToCode Bisque = "#FFE4C4"
colorToCode Black = "#000000"
colorToCode BlanchedAlmond = "#FFEBCD"
colorToCode Blue = "#0000FF"
colorToCode BlueViolet = "#8A2BE2"
colorToCode Brown = "#A52A2A"
colorToCode BurlyWood = "#DEB887"
colorToCode CadetBlue = "#5F9EA0"
colorToCode Chartreuse = "#7FFF00"
colorToCode Chocolate = "#D2691E"
colorToCode Coral = "#FF7F50"
colorToCode CornflowerBlue = "#6495ED"
colorToCode Cornsilk = "#FFF8DC"
colorToCode Crimson = "#DC143C"
colorToCode Cyan = "#00FFFF"
colorToCode DarkBlue = "#00008B"
colorToCode DarkCyan = "#008B8B"
colorToCode DarkGoldenRod = "#B8860B"
colorToCode DarkGray = "#A9A9A9"
colorToCode DarkGrey = "#A9A9A9"
colorToCode DarkGreen = "#006400"
colorToCode DarkKhaki = "#BDB76B"
colorToCode DarkMagenta = "#8B008B"
colorToCode DarkOliveGreen = "#556B2F"
colorToCode DarkOrange = "#FF8C00"
colorToCode DarkOrchid = "#9932CC"
colorToCode DarkRed = "#8B0000"
colorToCode DarkSalmon = "#E9967A"
colorToCode DarkSeaGreen = "#8FBC8F"
colorToCode DarkSlateBlue = "#483D8B"
colorToCode DarkSlateGray = "#2F4F4F"
colorToCode DarkSlateGrey = "#2F4F4F"
colorToCode DarkTurquoise = "#00CED1"
colorToCode DarkViolet = "#9400D3"
colorToCode DeepPink = "#FF1493"
colorToCode DeepSkyBlue = "#00BFFF"
colorToCode DimGray = "#696969"
colorToCode DimGrey = "#696969"
colorToCode DodgerBlue = "#1E90FF"
colorToCode FireBrick = "#B22222"
colorToCode FloralWhite = "#FFFAF0"
colorToCode ForestGreen = "#228B22"
colorToCode Fuchsia = "#FF00FF"
colorToCode Gainsboro = "#DCDCDC"
colorToCode GhostWhite = "#F8F8FF"
colorToCode Gold = "#FFD700"
colorToCode GoldenRod = "#DAA520"
colorToCode Gray = "#808080"
colorToCode Grey = "#808080"
colorToCode Green = "#008000"
colorToCode GreenYellow = "#ADFF2F"
colorToCode HoneyDew = "#F0FFF0"
colorToCode HotPink = "#FF69B4"
colorToCode IndianRed  = "#CD5C5C"
colorToCode Indigo = "#4B0082"
colorToCode Ivory = "#FFFFF0"
colorToCode Khaki = "#F0E68C"
colorToCode Lavender = "#E6E6FA"
colorToCode LavenderBlush = "#FFF0F5"
colorToCode LawnGreen = "#7CFC00"
colorToCode LemonChiffon = "#FFFACD"
colorToCode LightBlue = "#ADD8E6"
colorToCode LightCoral = "#F08080"
colorToCode LightCyan = "#E0FFFF"
colorToCode LightGoldenRodYellow = "#FAFAD2"
colorToCode LightGray = "#D3D3D3"
colorToCode LightGrey = "#D3D3D3"
colorToCode LightGreen = "#90EE90"
colorToCode LightPink = "#FFB6C1"
colorToCode LightSalmon = "#FFA07A"
colorToCode LightSeaGreen = "#20B2AA"
colorToCode LightSkyBlue = "#87CEFA"
colorToCode LightSlateGray = "#778899"
colorToCode LightSlateGrey = "#778899"
colorToCode LightSteelBlue = "#B0C4DE"
colorToCode LightYellow = "#FFFFE0"
colorToCode Lime = "#00FF00"
colorToCode LimeGreen = "#32CD32"
colorToCode Linen = "#FAF0E6"
colorToCode Magenta = "#FF00FF"
colorToCode Maroon = "#800000"
colorToCode MediumAquaMarine = "#66CDAA"
colorToCode MediumBlue = "#0000CD"
colorToCode MediumOrchid = "#BA55D3"
colorToCode MediumPurple = "#9370DB"
colorToCode MediumSeaGreen = "#3CB371"
colorToCode MediumSlateBlue = "#7B68EE"
colorToCode MediumSpringGreen = "#00FA9A"
colorToCode MediumTurquoise = "#48D1CC"
colorToCode MediumVioletRed = "#C71585"
colorToCode MidnightBlue = "#191970"
colorToCode MintCream = "#F5FFFA"
colorToCode MistyRose = "#FFE4E1"
colorToCode Moccasin = "#FFE4B5"
colorToCode NavajoWhite = "#FFDEAD"
colorToCode Navy = "#000080"
colorToCode OldLace = "#FDF5E6"
colorToCode Olive = "#808000"
colorToCode OliveDrab = "#6B8E23"
colorToCode Orange = "#FFA500"
colorToCode OrangeRed = "#FF4500"
colorToCode Orchid = "#DA70D6"
colorToCode PaleGoldenRod = "#EEE8AA"
colorToCode PaleGreen = "#98FB98"
colorToCode PaleTurquoise = "#AFEEEE"
colorToCode PaleVioletRed = "#DB7093"
colorToCode PapayaWhip = "#FFEFD5"
colorToCode PeachPuff = "#FFDAB9"
colorToCode Peru = "#CD853F"
colorToCode Pink = "#FFC0CB"
colorToCode Plum = "#DDA0DD"
colorToCode PowderBlue = "#B0E0E6"
colorToCode Purple = "#800080"
colorToCode RebeccaPurple = "#663399"
colorToCode Red = "#FF0000"
colorToCode RosyBrown = "#BC8F8F"
colorToCode RoyalBlue = "#4169E1"
colorToCode SaddleBrown = "#8B4513"
colorToCode Salmon = "#FA8072"
colorToCode SandyBrown = "#F4A460"
colorToCode SeaGreen = "#2E8B57"
colorToCode SeaShell = "#FFF5EE"
colorToCode Sienna = "#A0522D"
colorToCode Silver = "#C0C0C0"
colorToCode SkyBlue = "#87CEEB"
colorToCode SlateBlue = "#6A5ACD"
colorToCode SlateGray = "#708090"
colorToCode SlateGrey = "#708090"
colorToCode Snow = "#FFFAFA"
colorToCode SpringGreen = "#00FF7F"
colorToCode SteelBlue = "#4682B4"
colorToCode Tan = "#D2B48C"
colorToCode Teal = "#008080"
colorToCode Thistle = "#D8BFD8"
colorToCode Tomato = "#FF6347"
colorToCode Turquoise = "#40E0D0"
colorToCode Violet = "#EE82EE"
colorToCode Wheat = "#F5DEB3"
colorToCode White = "#FFFFFF"
colorToCode WhiteSmoke = "#F5F5F5"
colorToCode Yellow = "#FFFF00"
colorToCode YellowGreen = "#9ACD32"

-- REVIEW: DRY
colors :: Array Color
colors =
  [ AliceBlue
  , AntiqueWhite
  , Aqua
  , Aquamarine
  , Azure
  , Beige
  , Bisque
  , Black
  , BlanchedAlmond
  , Blue
  , BlueViolet
  , Brown
  , BurlyWood
  , CadetBlue
  , Chartreuse
  , Chocolate
  , Coral
  , CornflowerBlue
  , Cornsilk
  , Crimson
  , Cyan
  , DarkBlue
  , DarkCyan
  , DarkGoldenRod
  , DarkGray
  , DarkGrey
  , DarkGreen
  , DarkKhaki
  , DarkMagenta
  , DarkOliveGreen
  , DarkOrange
  , DarkOrchid
  , DarkRed
  , DarkSalmon
  , DarkSeaGreen
  , DarkSlateBlue
  , DarkSlateGray
  , DarkSlateGrey
  , DarkTurquoise
  , DarkViolet
  , DeepPink
  , DeepSkyBlue
  , DimGray
  , DimGrey
  , DodgerBlue
  , FireBrick
  , FloralWhite
  , ForestGreen
  , Fuchsia
  , Gainsboro
  , GhostWhite
  , Gold
  , GoldenRod
  , Gray
  , Grey
  , Green
  , GreenYellow
  , HoneyDew
  , HotPink
  , IndianRed 
  , Indigo
  , Ivory
  , Khaki
  , Lavender
  , LavenderBlush
  , LawnGreen
  , LemonChiffon
  , LightBlue
  , LightCoral
  , LightCyan
  , LightGoldenRodYellow
  , LightGray
  , LightGrey
  , LightGreen
  , LightPink
  , LightSalmon
  , LightSeaGreen
  , LightSkyBlue
  , LightSlateGray
  , LightSlateGrey
  , LightSteelBlue
  , LightYellow
  , Lime
  , LimeGreen
  , Linen
  , Magenta
  , Maroon
  , MediumAquaMarine
  , MediumBlue
  , MediumOrchid
  , MediumPurple
  , MediumSeaGreen
  , MediumSlateBlue
  , MediumSpringGreen
  , MediumTurquoise
  , MediumVioletRed
  , MidnightBlue
  , MintCream
  , MistyRose
  , Moccasin
  , NavajoWhite
  , Navy
  , OldLace
  , Olive
  , OliveDrab
  , Orange
  , OrangeRed
  , Orchid
  , PaleGoldenRod
  , PaleGreen
  , PaleTurquoise
  , PaleVioletRed
  , PapayaWhip
  , PeachPuff
  , Peru
  , Pink
  , Plum
  , PowderBlue
  , Purple
  , RebeccaPurple
  , Red
  , RosyBrown
  , RoyalBlue
  , SaddleBrown
  , Salmon
  , SandyBrown
  , SeaGreen
  , SeaShell
  , Sienna
  , Silver
  , SkyBlue
  , SlateBlue
  , SlateGray
  , SlateGrey
  , Snow
  , SpringGreen
  , SteelBlue
  , Tan
  , Teal
  , Thistle
  , Tomato
  , Turquoise
  , Violet
  , Wheat
  , White
  , WhiteSmoke
  , Yellow
  , YellowGreen
  ]
