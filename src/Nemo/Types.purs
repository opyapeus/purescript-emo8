module Nemo.Types where

import Prelude

import Audio.WebAudio.Types (AudioContext)
import Effect (Effect)
import Graphics.Canvas (Context2D)
import Nemo.Data.Audio (Efct, Note, Vol)
import Nemo.Data.Color (Color)
import Nemo.Data.Emoji (Emoji)


newtype RawMap = RawMap String

newtype RawSound = RawSound String

-- | Asset data.
-- | It contains map data and sound data.
data Asset = Asset
  { mapData :: Array EmojiMap
  , soundData :: Array Sound
  }

data DrawContext = DrawContext
  { ctx :: Context2D
  , mapData :: Array EmojiMap
  }

data SoundContext = SoundContext
  { ctx :: AudioContext
  , soundData :: Array Sound
  }

data Tick = Tick
  { note :: Note
  , vol :: Vol
  , efct :: Efct
  }

type EmojiMap = Array (Array Emoji)

type Sound = Array Tick

type RenderOp = DrawContext -> Effect Unit

type AudioOp = SoundContext -> Effect Unit

data DebugDisplay = None | LeftBottom | LeftTop

-- | Debug config.
type DebugConfig =
  { debugDisplay :: DebugDisplay
  , color :: Color
  }

type X = Int
type Y = Int
type IdX = Int
type IdY = Int
type Size = Int
type Deg = Int
type Bpm = Int

type MapId = Int
type SoundId = Int