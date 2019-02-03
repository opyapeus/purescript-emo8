module Emo8.Boot
  ( State
  , initialState
  , bootRawSound
  ) where

import Prelude

import Data.Int (floor, toNumber)
import Data.Maybe (fromMaybe)
import Emo8.Action.Draw (cls, emo)
import Emo8.Action.Sound (play)
import Emo8.Action.Update (randomElement, randomInt)
import Emo8.Class.Game (class Game)
import Emo8.Class.GameBoot (class GameBoot)
import Emo8.Data.Channel (Channel(..))
import Emo8.Data.Color (Color(..), colors)
import Emo8.Data.Emoji (Emoji)
import Emo8.Data.Emoji as E
import Emo8.Data.Tone (Tone(..))
import Emo8.Parse (RawSound(..))
import Emo8.Types (MonitorSize, Position)
import Emo8.Utils (isCatchAny)

data State = State
  { titleSize :: Int
  , titlePos :: Position
  , titleEmojiType :: EmojiType
  , bgColor :: Color
  , wait :: Int
  }

data EmojiType = Normal | Rare

instance gameState :: Game State where
  update i st@(State s)
    | isFinish st = pure st
    | otherwise = if isCatchAny i
      then do
        mc <- randomElement colors
        n <- randomInt 0 19
        pure <<< State $ s
          { wait = initialWait
          , bgColor = fromMaybe initialBgColor mc
          , titleEmojiType = if n == 0 then Rare else Normal
          }
      else
        pure <<< State $ s
          { wait = s.wait - 1
          }

  draw (State s) = do
    cls s.bgColor
    emo (toEmoji s.titleEmojiType) s.titleSize s.titlePos.x s.titlePos.y

  sound (State s) = when (s.wait == initialWait - 1) $ play CH1 0 Saw 1024

instance gameBootState :: GameBoot State where
  finished = isFinish

initialState :: MonitorSize -> State
initialState ms = let size = ratioToSize 0.25 $ minLength ms in State
  { titleSize: size
  , titlePos: { x: (ms.width - size) / 2, y: (ms.height - size) / 2 }
  , titleEmojiType: Normal
  , bgColor: initialBgColor
  , wait: initialWait
  }

initialWait :: Int
initialWait = 120

initialBgColor :: Color
initialBgColor = Black

toEmoji :: EmojiType -> Emoji
toEmoji Normal = E.joystick
toEmoji Rare = E.videoGame

minLength :: MonitorSize -> Int
minLength ms
  | ms.width < ms.height = ms.width
  | otherwise = ms.height

ratioToSize :: Number -> Int -> Int
ratioToSize r l = floor $ r * toNumber l

isFinish :: State -> Boolean
isFinish (State s) = s.wait <= 0

bootRawSound :: RawSound
bootRawSound = RawSound """
🎼🔈5️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈6️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈6️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈6️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""
