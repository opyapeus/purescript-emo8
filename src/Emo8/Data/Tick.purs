module Emo8.Data.Tick where

import Emo8.Data.Audio (Efct(..), Note, Octave, Vol(..))

type Tick =
  { scales :: Array Scale
  , vol :: Vol
  , efct :: Efct
  }

type Scale =
  { octave :: Octave
  , note :: Note
  }

emptyTick :: Tick
emptyTick =
  { scales: []
  , vol: Mute
  , efct: None
  }

mkScale :: Octave -> Note -> Scale
mkScale o n = { octave: o, note: n }
