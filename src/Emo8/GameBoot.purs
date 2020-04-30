module Emo8.GameBoot
  ( class GameBoot
  , finished
  , State
  , initialState
  , SR
  , sr
  ) where

import Prelude
import Data.Array ((..))
import Data.Foldable (for_)
import Data.Int (floor, toNumber)
import Data.Newtype (class Newtype)
import Data.Symbol (SProxy(..))
import Emo8.Data.Color as C
import Emo8.Data.Emoji as E
import Emo8.Data.Input (Input)
import Emo8.Data.Tone (Tone(..))
import Emo8.Game (class Game)
import Emo8.Game.Draw (cls, emo)
import Emo8.Game.Sound (play')
import Emo8.Parser (parse)
import Emo8.Parser.Type (Score)
import Emo8.Type (Rect)
import Emo8.Util.Resource (EmptyMap)
import Math (cos, pi, sin)

class
  Game s dr sr <= GameBoot s dr sr | s -> dr sr where
  finished :: s -> Boolean

data State
  = State
    { infSize :: Int
    , infPos :: Position
    , infEmoji :: E.Emoji
    , emoSize :: Int
    , emoPos :: Position
    , bgColor :: C.Color
    , timeToFinish :: Int
    , rotation :: Number
    , isReverse :: Boolean
    , prevInput :: Input
    , frame :: Int
    }

newtype SR
  = SR
  { beep :: Score
  }

derive instance newtypeSR :: Newtype SR _

type Position
  = { x :: Int, y :: Int }

type Polar
  = { radius :: Number
    , theta :: Number
    }

instance gameState :: Game State EmptyMap SR where
  update i st@(State s)
    | finished st = pure st
    | isCatchAny s.prevInput i =
      pure <<< State
        $ s
            { timeToFinish = initialTime
            , bgColor = pickedColor
            , infEmoji = pickedEmoji
            , isReverse = not s.isReverse
            , prevInput = i
            , frame = s.frame + 1
            }
      where
      pickedColor = case mod s.frame 5 of
        0 -> C.aliceBlue
        1 -> C.antiqueWhite
        2 -> C.aqua
        3 -> C.aquamarine
        _ -> C.azure

      pickedEmoji
        | mod s.frame 20 == 0 = E.zanyFace
        | otherwise = E.infinity
    | otherwise =
      pure <<< State
        $ s
            { timeToFinish = s.timeToFinish - 1
            , rotation = nextRot
            , prevInput = i
            , frame = s.frame + 1
            }
      where
      nextRot =
        if s.isReverse then
          s.rotation - 1.0
        else
          s.rotation + 1.0
  draw (State s) = do
    cls s.bgColor
    emo s.infEmoji s.infSize s.infPos.x s.infPos.y
    for_ moves \move ->
      emo E.roastedSweetPotato s.emoSize (s.emoPos.x + move.x) (s.emoPos.y + move.y)
    where
    rotations = (+) s.rotation <<< toNumber <<< (*) 45 <$> 0 .. 7

    moves = map polToPos <<< map { radius: toNumber s.infSize, theta: _ } $ rotations
  sound (State s) = do
    when (s.timeToFinish == initialTime)
      $ play' _.beep Sawtooth 20

instance gameBootState :: GameBoot State EmptyMap SR where
  finished (State s) = s.timeToFinish <= 0

initialState :: Rect -> State
initialState r =
  State
    { infSize: infSize
    , infPos: basePos infSize
    , infEmoji: E.infinity
    , emoSize: emoSize
    , emoPos: basePos emoSize
    , bgColor: C.black
    , timeToFinish: initialTime
    , rotation: 0.0
    , isReverse: false
    , prevInput: noInput
    , frame: 0
    }
  where
  minLength
    | r.width < r.height = r.width
    | otherwise = r.height

  infSize = floor <<< (*) 0.25 <<< toNumber $ minLength

  emoSize = infSize / 4

  basePos size =
    { x: (r.width - size) / 2
    , y: (r.height - size) / 2
    }

noInput :: Input
noInput =
  { isUp: false
  , isLeft: false
  , isDown: false
  , isRight: false
  , isW: false
  , isA: false
  , isS: false
  , isD: false
  }

polToPos :: Polar -> Position
polToPos pol =
  { x: floor $ pol.radius * cos (toRadian pol.theta)
  , y: floor $ pol.radius * sin (toRadian pol.theta)
  }
  where
  toRadian = (*) pi <<< flip (/) 180.0

isCatchAny :: Input -> Input -> Boolean
isCatchAny pi i =
  (i.isUp && not pi.isUp)
    || (i.isLeft && not pi.isLeft)
    || (i.isDown && not pi.isDown)
    || (i.isRight && not pi.isRight)
    || (i.isW && not pi.isW)
    || (i.isA && not pi.isA)
    || (i.isS && not pi.isS)
    || (i.isD && not pi.isD)

initialTime :: Int
initialTime = 120

sr :: SR
sr = SR $ { beep: parse s0 }

s0 ::
  SProxy
    """
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
    """
s0 = SProxy
