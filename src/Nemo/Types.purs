module Nemo.Types where

import Prelude

import Audio.WebAudio.Types (AudioContext)
import Data.String (Pattern(..), Replacement(..), replace)
import Effect (Effect)
import Graphics.Canvas (Context2D)
import Nemo.Data.Audio (Efct, Note, Octave, Vol)
import Nemo.Data.Color (Color)
import Nemo.Data.Emoji (Emoji)


newtype RawMap = RawMap String

newtype RawSound = RawSound String

instance semigroupRawSound :: Semigroup RawSound where
  append (RawSound a) (RawSound b) = RawSound (a <> removeTopLF b)
    where removeTopLF = replace (Pattern "\n") (Replacement "")

-- | Asset type.
-- | It contains map data and sound data.
type Asset =
  { mapData :: Array EmojiMap
  , soundData :: Array Sound
  }

type DrawContext =
  { ctx :: Context2D
  , mapData :: Array EmojiMap
  }

type SoundContext =
  { ctx :: AudioContext
  , soundData :: Array Sound
  }

type EmojiMap = Array (Array Emoji)

type Sound = Array Tick

type Tick =
  { scales :: Array Scale
  , vol :: Vol
  , efct :: Efct
  }

type Scale =
  { octave :: Octave
  , note :: Note
  }

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