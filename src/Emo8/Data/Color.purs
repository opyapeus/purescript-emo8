module Emo8.Data.Color
  ( Color
  , aliceBlue
  , antiqueWhite
  , aqua
  , aquamarine
  , azure
  , beige
  , bisque
  , black
  , blanchedAlmond
  , blue
  , blueViolet
  , brown
  , burlyWood
  , cadetBlue
  , chartreuse
  , chocolate
  , coral
  , cornflowerBlue
  , cornsilk
  , crimson
  , cyan
  , darkBlue
  , darkCyan
  , darkGoldenRod
  , darkGray
  , darkGreen
  , darkKhaki
  , darkMagenta
  , darkOliveGreen
  , darkOrange
  , darkOrchid
  , darkRed
  , darkSalmon
  , darkSeaGreen
  , darkSlateBlue
  , darkSlateGray
  , darkTurquoise
  , darkViolet
  , deepPink
  , deepSkyBlue
  , dimGray
  , dodgerBlue
  , fireBrick
  , floralWhite
  , forestGreen
  , fuchsia
  , gainsboro
  , ghostWhite
  , gold
  , goldenRod
  , gray
  , green
  , greenYellow
  , honeyDew
  , hotPink
  , indianRed
  , indigo
  , ivory
  , khaki
  , lavender
  , lavenderBlush
  , lawnGreen
  , lemonChiffon
  , lightBlue
  , lightCoral
  , lightCyan
  , lightGoldenRodYellow
  , lightGray
  , lightGreen
  , lightPink
  , lightSalmon
  , lightSeaGreen
  , lightSkyBlue
  , lightSlateGray
  , lightSteelBlue
  , lightYellow
  , lime
  , limeGreen
  , linen
  , magenta
  , maroon
  , mediumAquaMarine
  , mediumBlue
  , mediumOrchid
  , mediumPurple
  , mediumSeaGreen
  , mediumSlateBlue
  , mediumSpringGreen
  , mediumTurquoise
  , mediumVioletRed
  , midnightBlue
  , mintCream
  , mistyRose
  , moccasin
  , navajoWhite
  , navy
  , oldLace
  , olive
  , oliveDrab
  , orange
  , orangeRed
  , orchid
  , paleGoldenRod
  , paleGreen
  , paleTurquoise
  , paleVioletRed
  , papayaWhip
  , peachPuff
  , peru
  , pink
  , plum
  , powderBlue
  , purple
  , rebeccaPurple
  , red
  , rosyBrown
  , royalBlue
  , saddleBrown
  , salmon
  , sandyBrown
  , seaGreen
  , seaShell
  , sienna
  , silver
  , skyBlue
  , slateBlue
  , slateGray
  , snow
  , springGreen
  , steelBlue
  , tan
  , teal
  , thistle
  , tomato
  , turquoise
  , violet
  , wheat
  , white
  , whiteSmoke
  , yellow
  , yellowGreen
  ) where

import Prelude

-- | Emo8 color type which supports 140 HTML named colors.
newtype Color
  = Color String

instance showColor :: Show Color where
  show (Color s) = s

-- | #F0F8FF
aliceBlue :: Color
aliceBlue = Color "#F0F8FF"

-- | #FAEBD7
antiqueWhite :: Color
antiqueWhite = Color "#FAEBD7"

-- | #00FFFF
aqua :: Color
aqua = Color "#00FFFF"

-- | #7FFFD4
aquamarine :: Color
aquamarine = Color "#7FFFD4"

-- | #F0FFFF
azure :: Color
azure = Color "#F0FFFF"

-- | #F5F5DC
beige :: Color
beige = Color "#F5F5DC"

-- | #FFE4C4
bisque :: Color
bisque = Color "#FFE4C4"

-- | #000000
black :: Color
black = Color "#000000"

-- | #FFEBCD
blanchedAlmond :: Color
blanchedAlmond = Color "#FFEBCD"

-- | #0000FF
blue :: Color
blue = Color "#0000FF"

-- | #8A2BE2
blueViolet :: Color
blueViolet = Color "#8A2BE2"

-- | #A52A2A
brown :: Color
brown = Color "#A52A2A"

-- | #DEB887
burlyWood :: Color
burlyWood = Color "#DEB887"

-- | #5F9EA0
cadetBlue :: Color
cadetBlue = Color "#5F9EA0"

-- | #7FFF00
chartreuse :: Color
chartreuse = Color "#7FFF00"

-- | #D2691E
chocolate :: Color
chocolate = Color "#D2691E"

-- | #FF7F50
coral :: Color
coral = Color "#FF7F50"

-- | #6495ED
cornflowerBlue :: Color
cornflowerBlue = Color "#6495ED"

-- | #FFF8DC
cornsilk :: Color
cornsilk = Color "#FFF8DC"

-- | #DC143C
crimson :: Color
crimson = Color "#DC143C"

-- | #00FFFF
cyan :: Color
cyan = Color "#00FFFF"

-- | #00008B
darkBlue :: Color
darkBlue = Color "#00008B"

-- | #008B8B
darkCyan :: Color
darkCyan = Color "#008B8B"

-- | #B8860B
darkGoldenRod :: Color
darkGoldenRod = Color "#B8860B"

-- | #A9A9A9
darkGray :: Color
darkGray = Color "#A9A9A9"

-- | #006400
darkGreen :: Color
darkGreen = Color "#006400"

-- | #BDB76B
darkKhaki :: Color
darkKhaki = Color "#BDB76B"

-- | #8B008B
darkMagenta :: Color
darkMagenta = Color "#8B008B"

-- | #556B2F
darkOliveGreen :: Color
darkOliveGreen = Color "#556B2F"

-- | #FF8C00
darkOrange :: Color
darkOrange = Color "#FF8C00"

-- | #9932CC
darkOrchid :: Color
darkOrchid = Color "#9932CC"

-- | #8B0000
darkRed :: Color
darkRed = Color "#8B0000"

-- | #E9967A
darkSalmon :: Color
darkSalmon = Color "#E9967A"

-- | #8FBC8F
darkSeaGreen :: Color
darkSeaGreen = Color "#8FBC8F"

-- | #483D8B
darkSlateBlue :: Color
darkSlateBlue = Color "#483D8B"

-- | #2F4F4F
darkSlateGray :: Color
darkSlateGray = Color "#2F4F4F"

-- | #00CED1
darkTurquoise :: Color
darkTurquoise = Color "#00CED1"

-- | #9400D3
darkViolet :: Color
darkViolet = Color "#9400D3"

-- | #FF1493
deepPink :: Color
deepPink = Color "#FF1493"

-- | #00BFFF
deepSkyBlue :: Color
deepSkyBlue = Color "#00BFFF"

-- | #696969
dimGray :: Color
dimGray = Color "#696969"

-- | #1E90FF
dodgerBlue :: Color
dodgerBlue = Color "#1E90FF"

-- | #B22222
fireBrick :: Color
fireBrick = Color "#B22222"

-- | #FFFAF0
floralWhite :: Color
floralWhite = Color "#FFFAF0"

-- | #228B22
forestGreen :: Color
forestGreen = Color "#228B22"

-- | #FF00FF
fuchsia :: Color
fuchsia = Color "#FF00FF"

-- | #DCDCDC
gainsboro :: Color
gainsboro = Color "#DCDCDC"

-- | #F8F8FF
ghostWhite :: Color
ghostWhite = Color "#F8F8FF"

-- | #FFD700
gold :: Color
gold = Color "#FFD700"

-- | #DAA520
goldenRod :: Color
goldenRod = Color "#DAA520"

-- | #808080
gray :: Color
gray = Color "#808080"

-- | #008000
green :: Color
green = Color "#008000"

-- | #ADFF2F
greenYellow :: Color
greenYellow = Color "#ADFF2F"

-- | #F0FFF0
honeyDew :: Color
honeyDew = Color "#F0FFF0"

-- | #FF69B4
hotPink :: Color
hotPink = Color "#FF69B4"

-- | #CD5C5C
indianRed :: Color
indianRed = Color "#CD5C5C"

-- | #4B0082
indigo :: Color
indigo = Color "#4B0082"

-- | #FFFFF0
ivory :: Color
ivory = Color "#FFFFF0"

-- | #F0E68C
khaki :: Color
khaki = Color "#F0E68C"

-- | #E6E6FA
lavender :: Color
lavender = Color "#E6E6FA"

-- | #FFF0F5
lavenderBlush :: Color
lavenderBlush = Color "#FFF0F5"

-- | #7CFC00
lawnGreen :: Color
lawnGreen = Color "#7CFC00"

-- | #FFFACD
lemonChiffon :: Color
lemonChiffon = Color "#FFFACD"

-- | #ADD8E6
lightBlue :: Color
lightBlue = Color "#ADD8E6"

-- | #F08080
lightCoral :: Color
lightCoral = Color "#F08080"

-- | #E0FFFF
lightCyan :: Color
lightCyan = Color "#E0FFFF"

-- | #FAFAD2
lightGoldenRodYellow :: Color
lightGoldenRodYellow = Color "#FAFAD2"

-- | #D3D3D3
lightGray :: Color
lightGray = Color "#D3D3D3"

-- | #90EE90
lightGreen :: Color
lightGreen = Color "#90EE90"

-- | #FFB6C1
lightPink :: Color
lightPink = Color "#FFB6C1"

-- | #FFA07A
lightSalmon :: Color
lightSalmon = Color "#FFA07A"

-- | #20B2AA
lightSeaGreen :: Color
lightSeaGreen = Color "#20B2AA"

-- | #87CEFA
lightSkyBlue :: Color
lightSkyBlue = Color "#87CEFA"

-- | #778899
lightSlateGray :: Color
lightSlateGray = Color "#778899"

-- | #B0C4DE
lightSteelBlue :: Color
lightSteelBlue = Color "#B0C4DE"

-- | #FFFFE0
lightYellow :: Color
lightYellow = Color "#FFFFE0"

-- | #00FF00
lime :: Color
lime = Color "#00FF00"

-- | #32CD32
limeGreen :: Color
limeGreen = Color "#32CD32"

-- | #FAF0E6
linen :: Color
linen = Color "#FAF0E6"

-- | #FF00FF
magenta :: Color
magenta = Color "#FF00FF"

-- | #800000
maroon :: Color
maroon = Color "#800000"

-- | #66CDAA
mediumAquaMarine :: Color
mediumAquaMarine = Color "#66CDAA"

-- | #0000CD
mediumBlue :: Color
mediumBlue = Color "#0000CD"

-- | #BA55D3
mediumOrchid :: Color
mediumOrchid = Color "#BA55D3"

-- | #9370DB
mediumPurple :: Color
mediumPurple = Color "#9370DB"

-- | #3CB371
mediumSeaGreen :: Color
mediumSeaGreen = Color "#3CB371"

-- | #7B68EE
mediumSlateBlue :: Color
mediumSlateBlue = Color "#7B68EE"

-- | #00FA9A
mediumSpringGreen :: Color
mediumSpringGreen = Color "#00FA9A"

-- | #48D1CC
mediumTurquoise :: Color
mediumTurquoise = Color "#48D1CC"

-- | #C71585
mediumVioletRed :: Color
mediumVioletRed = Color "#C71585"

-- | #191970
midnightBlue :: Color
midnightBlue = Color "#191970"

-- | #F5FFFA
mintCream :: Color
mintCream = Color "#F5FFFA"

-- | #FFE4E1
mistyRose :: Color
mistyRose = Color "#FFE4E1"

-- | #FFE4B5
moccasin :: Color
moccasin = Color "#FFE4B5"

-- | #FFDEAD
navajoWhite :: Color
navajoWhite = Color "#FFDEAD"

-- | #000080
navy :: Color
navy = Color "#000080"

-- | #FDF5E6
oldLace :: Color
oldLace = Color "#FDF5E6"

-- | #808000
olive :: Color
olive = Color "#808000"

-- | #6B8E23
oliveDrab :: Color
oliveDrab = Color "#6B8E23"

-- | #FFA500
orange :: Color
orange = Color "#FFA500"

-- | #FF4500
orangeRed :: Color
orangeRed = Color "#FF4500"

-- | #DA70D6
orchid :: Color
orchid = Color "#DA70D6"

-- | #EEE8AA
paleGoldenRod :: Color
paleGoldenRod = Color "#EEE8AA"

-- | #98FB98
paleGreen :: Color
paleGreen = Color "#98FB98"

-- | #AFEEEE
paleTurquoise :: Color
paleTurquoise = Color "#AFEEEE"

-- | #DB7093
paleVioletRed :: Color
paleVioletRed = Color "#DB7093"

-- | #FFEFD5
papayaWhip :: Color
papayaWhip = Color "#FFEFD5"

-- | #FFDAB9
peachPuff :: Color
peachPuff = Color "#FFDAB9"

-- | #CD853F
peru :: Color
peru = Color "#CD853F"

-- | #FFC0CB
pink :: Color
pink = Color "#FFC0CB"

-- | #DDA0DD
plum :: Color
plum = Color "#DDA0DD"

-- | #B0E0E6
powderBlue :: Color
powderBlue = Color "#B0E0E6"

-- | #800080
purple :: Color
purple = Color "#800080"

-- | #663399
rebeccaPurple :: Color
rebeccaPurple = Color "#663399"

-- | #FF0000
red :: Color
red = Color "#FF0000"

-- | #BC8F8F
rosyBrown :: Color
rosyBrown = Color "#BC8F8F"

-- | #4169E1
royalBlue :: Color
royalBlue = Color "#4169E1"

-- | #8B4513
saddleBrown :: Color
saddleBrown = Color "#8B4513"

-- | #FA8072
salmon :: Color
salmon = Color "#FA8072"

-- | #F4A460
sandyBrown :: Color
sandyBrown = Color "#F4A460"

-- | #2E8B57
seaGreen :: Color
seaGreen = Color "#2E8B57"

-- | #FFF5EE
seaShell :: Color
seaShell = Color "#FFF5EE"

-- | #A0522D
sienna :: Color
sienna = Color "#A0522D"

-- | #C0C0C0
silver :: Color
silver = Color "#C0C0C0"

-- | #87CEEB
skyBlue :: Color
skyBlue = Color "#87CEEB"

-- | #6A5ACD
slateBlue :: Color
slateBlue = Color "#6A5ACD"

-- | #708090
slateGray :: Color
slateGray = Color "#708090"

-- | #FFFAFA
snow :: Color
snow = Color "#FFFAFA"

-- | #00FF7F
springGreen :: Color
springGreen = Color "#00FF7F"

-- | #4682B4
steelBlue :: Color
steelBlue = Color "#4682B4"

-- | #D2B48C
tan :: Color
tan = Color "#D2B48C"

-- | #008080
teal :: Color
teal = Color "#008080"

-- | #D8BFD8
thistle :: Color
thistle = Color "#D8BFD8"

-- | #FF6347
tomato :: Color
tomato = Color "#FF6347"

-- | #40E0D0
turquoise :: Color
turquoise = Color "#40E0D0"

-- | #EE82EE
violet :: Color
violet = Color "#EE82EE"

-- | #F5DEB3
wheat :: Color
wheat = Color "#F5DEB3"

-- | #FFFFFF
white :: Color
white = Color "#FFFFFF"

-- | #F5F5F5
whiteSmoke :: Color
whiteSmoke = Color "#F5F5F5"

-- | #FFFF00
yellow :: Color
yellow = Color "#FFFF00"

-- | #9ACD32
yellowGreen :: Color
yellowGreen = Color "#9ACD32"
