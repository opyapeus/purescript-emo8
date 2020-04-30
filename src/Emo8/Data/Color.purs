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

newtype Color
  = Color String

instance showColor :: Show Color where
  show (Color s) = s

aliceBlue :: Color
aliceBlue = Color "#F0F8FF"

antiqueWhite :: Color
antiqueWhite = Color "#FAEBD7"

aqua :: Color
aqua = Color "#00FFFF"

aquamarine :: Color
aquamarine = Color "#7FFFD4"

azure :: Color
azure = Color "#F0FFFF"

beige :: Color
beige = Color "#F5F5DC"

bisque :: Color
bisque = Color "#FFE4C4"

black :: Color
black = Color "#000000"

blanchedAlmond :: Color
blanchedAlmond = Color "#FFEBCD"

blue :: Color
blue = Color "#0000FF"

blueViolet :: Color
blueViolet = Color "#8A2BE2"

brown :: Color
brown = Color "#A52A2A"

burlyWood :: Color
burlyWood = Color "#DEB887"

cadetBlue :: Color
cadetBlue = Color "#5F9EA0"

chartreuse :: Color
chartreuse = Color "#7FFF00"

chocolate :: Color
chocolate = Color "#D2691E"

coral :: Color
coral = Color "#FF7F50"

cornflowerBlue :: Color
cornflowerBlue = Color "#6495ED"

cornsilk :: Color
cornsilk = Color "#FFF8DC"

crimson :: Color
crimson = Color "#DC143C"

cyan :: Color
cyan = Color "#00FFFF"

darkBlue :: Color
darkBlue = Color "#00008B"

darkCyan :: Color
darkCyan = Color "#008B8B"

darkGoldenRod :: Color
darkGoldenRod = Color "#B8860B"

darkGray :: Color
darkGray = Color "#A9A9A9"

darkGreen :: Color
darkGreen = Color "#006400"

darkKhaki :: Color
darkKhaki = Color "#BDB76B"

darkMagenta :: Color
darkMagenta = Color "#8B008B"

darkOliveGreen :: Color
darkOliveGreen = Color "#556B2F"

darkOrange :: Color
darkOrange = Color "#FF8C00"

darkOrchid :: Color
darkOrchid = Color "#9932CC"

darkRed :: Color
darkRed = Color "#8B0000"

darkSalmon :: Color
darkSalmon = Color "#E9967A"

darkSeaGreen :: Color
darkSeaGreen = Color "#8FBC8F"

darkSlateBlue :: Color
darkSlateBlue = Color "#483D8B"

darkSlateGray :: Color
darkSlateGray = Color "#2F4F4F"

darkTurquoise :: Color
darkTurquoise = Color "#00CED1"

darkViolet :: Color
darkViolet = Color "#9400D3"

deepPink :: Color
deepPink = Color "#FF1493"

deepSkyBlue :: Color
deepSkyBlue = Color "#00BFFF"

dimGray :: Color
dimGray = Color "#696969"

dodgerBlue :: Color
dodgerBlue = Color "#1E90FF"

fireBrick :: Color
fireBrick = Color "#B22222"

floralWhite :: Color
floralWhite = Color "#FFFAF0"

forestGreen :: Color
forestGreen = Color "#228B22"

fuchsia :: Color
fuchsia = Color "#FF00FF"

gainsboro :: Color
gainsboro = Color "#DCDCDC"

ghostWhite :: Color
ghostWhite = Color "#F8F8FF"

gold :: Color
gold = Color "#FFD700"

goldenRod :: Color
goldenRod = Color "#DAA520"

gray :: Color
gray = Color "#808080"

green :: Color
green = Color "#008000"

greenYellow :: Color
greenYellow = Color "#ADFF2F"

honeyDew :: Color
honeyDew = Color "#F0FFF0"

hotPink :: Color
hotPink = Color "#FF69B4"

indianRed :: Color
indianRed = Color "#CD5C5C"

indigo :: Color
indigo = Color "#4B0082"

ivory :: Color
ivory = Color "#FFFFF0"

khaki :: Color
khaki = Color "#F0E68C"

lavender :: Color
lavender = Color "#E6E6FA"

lavenderBlush :: Color
lavenderBlush = Color "#FFF0F5"

lawnGreen :: Color
lawnGreen = Color "#7CFC00"

lemonChiffon :: Color
lemonChiffon = Color "#FFFACD"

lightBlue :: Color
lightBlue = Color "#ADD8E6"

lightCoral :: Color
lightCoral = Color "#F08080"

lightCyan :: Color
lightCyan = Color "#E0FFFF"

lightGoldenRodYellow :: Color
lightGoldenRodYellow = Color "#FAFAD2"

lightGray :: Color
lightGray = Color "#D3D3D3"

lightGreen :: Color
lightGreen = Color "#90EE90"

lightPink :: Color
lightPink = Color "#FFB6C1"

lightSalmon :: Color
lightSalmon = Color "#FFA07A"

lightSeaGreen :: Color
lightSeaGreen = Color "#20B2AA"

lightSkyBlue :: Color
lightSkyBlue = Color "#87CEFA"

lightSlateGray :: Color
lightSlateGray = Color "#778899"

lightSteelBlue :: Color
lightSteelBlue = Color "#B0C4DE"

lightYellow :: Color
lightYellow = Color "#FFFFE0"

lime :: Color
lime = Color "#00FF00"

limeGreen :: Color
limeGreen = Color "#32CD32"

linen :: Color
linen = Color "#FAF0E6"

magenta :: Color
magenta = Color "#FF00FF"

maroon :: Color
maroon = Color "#800000"

mediumAquaMarine :: Color
mediumAquaMarine = Color "#66CDAA"

mediumBlue :: Color
mediumBlue = Color "#0000CD"

mediumOrchid :: Color
mediumOrchid = Color "#BA55D3"

mediumPurple :: Color
mediumPurple = Color "#9370DB"

mediumSeaGreen :: Color
mediumSeaGreen = Color "#3CB371"

mediumSlateBlue :: Color
mediumSlateBlue = Color "#7B68EE"

mediumSpringGreen :: Color
mediumSpringGreen = Color "#00FA9A"

mediumTurquoise :: Color
mediumTurquoise = Color "#48D1CC"

mediumVioletRed :: Color
mediumVioletRed = Color "#C71585"

midnightBlue :: Color
midnightBlue = Color "#191970"

mintCream :: Color
mintCream = Color "#F5FFFA"

mistyRose :: Color
mistyRose = Color "#FFE4E1"

moccasin :: Color
moccasin = Color "#FFE4B5"

navajoWhite :: Color
navajoWhite = Color "#FFDEAD"

navy :: Color
navy = Color "#000080"

oldLace :: Color
oldLace = Color "#FDF5E6"

olive :: Color
olive = Color "#808000"

oliveDrab :: Color
oliveDrab = Color "#6B8E23"

orange :: Color
orange = Color "#FFA500"

orangeRed :: Color
orangeRed = Color "#FF4500"

orchid :: Color
orchid = Color "#DA70D6"

paleGoldenRod :: Color
paleGoldenRod = Color "#EEE8AA"

paleGreen :: Color
paleGreen = Color "#98FB98"

paleTurquoise :: Color
paleTurquoise = Color "#AFEEEE"

paleVioletRed :: Color
paleVioletRed = Color "#DB7093"

papayaWhip :: Color
papayaWhip = Color "#FFEFD5"

peachPuff :: Color
peachPuff = Color "#FFDAB9"

peru :: Color
peru = Color "#CD853F"

pink :: Color
pink = Color "#FFC0CB"

plum :: Color
plum = Color "#DDA0DD"

powderBlue :: Color
powderBlue = Color "#B0E0E6"

purple :: Color
purple = Color "#800080"

rebeccaPurple :: Color
rebeccaPurple = Color "#663399"

red :: Color
red = Color "#FF0000"

rosyBrown :: Color
rosyBrown = Color "#BC8F8F"

royalBlue :: Color
royalBlue = Color "#4169E1"

saddleBrown :: Color
saddleBrown = Color "#8B4513"

salmon :: Color
salmon = Color "#FA8072"

sandyBrown :: Color
sandyBrown = Color "#F4A460"

seaGreen :: Color
seaGreen = Color "#2E8B57"

seaShell :: Color
seaShell = Color "#FFF5EE"

sienna :: Color
sienna = Color "#A0522D"

silver :: Color
silver = Color "#C0C0C0"

skyBlue :: Color
skyBlue = Color "#87CEEB"

slateBlue :: Color
slateBlue = Color "#6A5ACD"

slateGray :: Color
slateGray = Color "#708090"

snow :: Color
snow = Color "#FFFAFA"

springGreen :: Color
springGreen = Color "#00FF7F"

steelBlue :: Color
steelBlue = Color "#4682B4"

tan :: Color
tan = Color "#D2B48C"

teal :: Color
teal = Color "#008080"

thistle :: Color
thistle = Color "#D8BFD8"

tomato :: Color
tomato = Color "#FF6347"

turquoise :: Color
turquoise = Color "#40E0D0"

violet :: Color
violet = Color "#EE82EE"

wheat :: Color
wheat = Color "#F5DEB3"

white :: Color
white = Color "#FFFFFF"

whiteSmoke :: Color
whiteSmoke = Color "#F5F5F5"

yellow :: Color
yellow = Color "#FFFF00"

yellowGreen :: Color
yellowGreen = Color "#9ACD32"
