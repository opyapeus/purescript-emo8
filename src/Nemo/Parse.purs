module Nemo.Parse
  ( RawMap(..)
  , RawSound(..)
  , parseEmojiMap
  , parseSound
  ) where

import Prelude
import Data.Array (concat, slice, zip)
import Data.Either (Either(..))
import Data.Foldable (length)
import Data.String.EmojiSplitter (splitEmoji)
import Data.String.Utils (lines)
import Data.String (Pattern(..), Replacement(..), replace)
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..), uncurry)
import Nemo.Class.Read (read)
import Nemo.Constants (maxNoteSize)
import Nemo.Data.Audio (Note, Octave, nextOctave, notes)
import Nemo.Data.Emoji (Emoji(..))
import Nemo.Types (EmojiMap, Sound, Tick, Scale)

newtype RawMap = RawMap String

newtype RawSound = RawSound String

instance semigroupRawSound :: Semigroup RawSound where
  append (RawSound a) (RawSound b) = RawSound (a <> removeTopLF b)
    where removeTopLF = replace (Pattern "\n") (Replacement "")

type EmojiString = String
type EmojiStringArray = Array EmojiString
type EmojiStringMatrix = Array EmojiStringArray
type NoteArray = Array Note

-- | Convert raw map string to emoji map
parseEmojiMap :: RawMap -> Either String EmojiMap
parseEmojiMap (RawMap s) = stringMatrixToEmojiMap =<< rawStringToSingletonArray s

stringMatrixToEmojiMap :: EmojiStringMatrix -> Either String EmojiMap
stringMatrixToEmojiMap = traverse (traverse readEmoji)
  where readEmoji = Right <<< Emoji


-- | Convert raw sound string to sound
parseSound :: RawSound -> Either String Sound
parseSound (RawSound s) = stringMatrixToSound =<< rawStringToSingletonArray s

stringMatrixToSound :: EmojiStringMatrix -> Either String Sound
stringMatrixToSound = traverse stringArrayToTick

stringArrayToTick :: EmojiStringArray -> Either String Tick
stringArrayToTick
  [ efct, vol, oct
  , c, cs, d, ds, e, f, fs, g, gs, a, as, b
  , c', cs', d', ds', e', f', fs', g', gs', a', as', b'
  ] = do
    effect <- read efct
    volume <- read vol
    octave <- read oct
    notes <- parseNotes [c, cs, d, ds, e, f, fs, g, gs, a, as, b]
    notes' <- parseNotes [c', cs', d', ds', e', f', fs', g', gs', a', as', b']
    Tuple validNotes validNotes' <- satisfyNoteLen notes notes'
    let scales = mkScale octave <$> validNotes
    let scales' = mkScale (nextOctave octave) <$> validNotes'
    pure
      { scales: scales <> scales'
      , vol: volume
      , efct: effect
      }
stringArrayToTick _ = Left "invalid format."

parseNotes :: EmojiStringArray -> Either String NoteArray
parseNotes = map concat <<< traverse (uncurry matchNote) <<< zip notes        

matchNote :: Note -> EmojiString -> Either String NoteArray
matchNote n "🎹" = Right [n]
matchNote _ "🈳" = Right []
matchNote _ s = Left $ s <> " can not be parsed."

satisfyNoteLen :: NoteArray -> NoteArray -> Either String (Tuple NoteArray NoteArray)
satisfyNoteLen xs ys = if length (xs <> ys) <= maxNoteSize
  then Right $ Tuple xs ys
  else Left $ "exceeded max note count " <> show maxNoteSize <> "."

mkScale :: Octave -> Note -> Scale
mkScale o n = { octave: o, note: n }


rawStringToSingletonArray :: String -> Either String EmojiStringMatrix
rawStringToSingletonArray s = traverse splitEmoji rows'
  where
    rows = lines s
    rows' = slice 1 (length rows - 1) rows -- NOTE: remove "\n" top and bottom
