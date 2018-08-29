module Nemo.Parse
  ( parseEmojiMap
  , parseSound
  ) where

import Prelude

import Data.Array (slice, zip, (!!))
import Data.Either (Either(..), note)
import Data.Foldable (length)
import Data.String (singleton, toCodePointArray)
import Data.String.Utils (lines)
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested (tuple4)
import Nemo.Class.Read (read)
import Nemo.Types (RawMap(..), RawSound(..), EmojiMap, Sound, Tick(..))


-- | Convert raw map string to emoji map
parseEmojiMap :: RawMap -> Either String EmojiMap
parseEmojiMap = singletonArrayToMap <<< rawMapToSingletonArray

singletonArrayToMap :: Array (Array String) -> Either String EmojiMap
singletonArrayToMap = traverse (traverse read)

rawMapToSingletonArray :: RawMap -> Array (Array String)
rawMapToSingletonArray (RawMap s) = rawStringToSingletonArray s

-- | Convert raw sound string to sound
parseSound :: RawSound -> Either String Sound
parseSound = singletonArrayToSound <<< rawSoundToSingletonArray

-- TODO: refactor
singletonArrayToSound :: Array (Array String) -> Either String Sound
singletonArrayToSound ls =
  case tuple4 eOctave' eEfct' eNote' eVol' of
    -- FIXME: Tuple4 _ _ _ _ -> [PureScript] Unknown data constructor Tuple4
    Tuple (Right octave') (Tuple (Right efct') (Tuple (Right note') (Tuple (Right vol') _))) ->
      -- zip3?
      let zipped = zip octave' $ zip note' $ zip vol' efct'
      in Right $
        flip map zipped $
          \(Tuple o (Tuple n (Tuple v e))) -> 
            Tick { octave: o, note: n, vol: v, efct: e}
    Tuple (Left msg) (Tuple _ (Tuple _ (Tuple _ _))) -> Left msg
    Tuple _ (Tuple (Left msg) (Tuple _ (Tuple _ _))) -> Left msg
    Tuple _ (Tuple _ (Tuple (Left msg) (Tuple _ _))) -> Left msg
    Tuple _ (Tuple _ (Tuple _ (Tuple (Left msg) _))) -> Left msg
  where
    eEfct' = traverse read =<< note "efct line not found." (ls !! 0)
    eOctave' = traverse read =<< note "octave line not found." (ls !! 1)
    eNote' = traverse read =<< note "note line not found." (ls !! 2)
    eVol' = traverse read =<< note "vol line not found." (ls !! 3)

rawSoundToSingletonArray :: RawSound -> Array (Array String)
rawSoundToSingletonArray (RawSound s) = rawStringToSingletonArray s

rawStringToSingletonArray :: String -> Array (Array String)
rawStringToSingletonArray s = sArr
  where
    rows = lines s
    -- NOTE: remove top and bottom
    rows' = slice 1 (length rows - 1) rows
    cpArr = map toCodePointArray rows'
    sArr = map (map singleton) cpArr