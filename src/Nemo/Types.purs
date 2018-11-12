module Nemo.Types where

import Audio.WebAudio.Types (AudioContext)
import Graphics.Canvas (Context2D)
import Nemo.Data.Audio (Efct, Note, Octave, Vol)
import Nemo.Data.Emoji (Emoji)
import Nemo.Data.Color (Color)
import Nemo.Data.DebugDisplay (DebugDisplay)

-- | Asset type.
-- | It contains map data and sound data.
type Asset =
  { mapData :: Array EmojiMap
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

type DrawContext =
  { ctx :: Context2D
  , mapData :: Array EmojiMap
  }

type SoundContext =
  { ctx :: AudioContext
  , soundData :: Array Sound
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

type DebugConfig =
  { debugDisplay :: DebugDisplay
  , color :: Color
  }
