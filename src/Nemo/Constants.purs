module Nemo.Constants where

-- | Return width: 1024, height: 1024
scene ::
  { width :: Int
  , height :: Int
  }
scene =
  { width: 1024
  , height: 1024
  }

-- | Return "scene"
canvasId :: String
canvasId = "scene"

-- | Return "sans-serif"
fontFamily :: String
fontFamily = "sans-serif"

maxNoteSize :: Int
maxNoteSize = 5