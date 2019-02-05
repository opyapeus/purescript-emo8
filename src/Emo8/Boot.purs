module Emo8.Boot
  ( State
  , initialState
  , bootRawSound
  ) where

import Prelude

import Data.Array ((..))
import Data.Foldable (for_)
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
import Emo8.Input (isCatchAny)
import Emo8.Parse (RawSound(..))
import Emo8.Types (MonitorSize, Position)
import Math (cos, pi, sin)

data State = State
  { titleSize :: Int
  , titlePos :: Position
  , titleEmojiType :: EmojiType
  , emoSize :: Int
  , emoPos :: Position
  , bgColor :: Color
  , wait :: Int
  , frame :: Int
  }

data EmojiType = Normal | Rare

type Polar =
  { radius :: Number
  , theta :: Number
  }

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
          , frame = s.frame + 1
          }
      else
        pure <<< State $ s
          { wait = s.wait - 1
          , frame = s.frame + 1
          }

  draw (State s) = do
    cls s.bgColor
    emo (toEmoji s.titleEmojiType) s.titleSize s.titlePos.x s.titlePos.y
    let rotBase = mod s.frame 45
        facts = 0 .. 7
        rots = flip (-) rotBase <<< (*) 45 <$> facts
        pols = (\rot -> fromPolar { radius: toNumber s.titleSize, theta: toNumber rot }) <$> rots
    for_ pols \pol -> emo E.roastedSweetPotato s.emoSize (s.emoPos.x + pol.x) (s.emoPos.y + pol.y)

  sound (State s) = when (s.wait == initialWait - 1) $ play CH1 0 Saw 1024

instance gameBootState :: GameBoot State where
  finished = isFinish

initialState :: MonitorSize -> State
initialState ms =
  let titleSize = ratioToSize 0.25 $ minLength ms
      emoSize = titleSize / 4
      calcBasePos size = { x: (ms.width - size) / 2, y: (ms.height - size) / 2 }
  in State
    { titleSize: titleSize
    , titlePos: calcBasePos titleSize
    , titleEmojiType: Normal
    , emoSize: emoSize
    , emoPos: calcBasePos emoSize
    , bgColor: initialBgColor
    , wait: initialWait
    , frame: 0
    }

initialWait :: Int
initialWait = 120

initialBgColor :: Color
initialBgColor = Black

toEmoji :: EmojiType -> Emoji
toEmoji Normal = E.infinity
toEmoji Rare = E.zanyFace

minLength :: MonitorSize -> Int
minLength ms
  | ms.width < ms.height = ms.width
  | otherwise = ms.height

ratioToSize :: Number -> Int -> Int
ratioToSize r l = floor $ r * toNumber l

isFinish :: State -> Boolean
isFinish (State s) = s.wait <= 0

fromPolar :: Polar -> Position
fromPolar pol =
  { x: floor $ pol.radius * cos (toRadian pol.theta)
  , y: floor $ pol.radius * sin (toRadian pol.theta)
  }
  where
    toRadian = (*) pi <<< flip (/) 180.0

bootRawSound :: RawSound
bootRawSound = RawSound """
🎼🔈5️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈6️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈6️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈6️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""
