module Main where

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Maybe (Maybe(..))
import Data.Monoid (guard)
import Data.Symbol (SProxy(..))
import Effect (Effect)
import Emo8 (emo8Dev)
import Emo8.Data.Color as C
import Emo8.Data.Emoji as E
import Emo8.Data.Input (Input)
import Emo8.Data.Tone (Tone(..))
import Emo8.FFI.LocalStorage (LocalKey(..))
import Emo8.Game (class Game)
import Emo8.Game.Draw (cls, emap, emo, emo')
import Emo8.Game.Sound (play')
import Emo8.Game.Update (Update, getCanvasSize)
import Emo8.GameDev (class GameDev, loadStateWithDefault)
import Emo8.Parser (parse)
import Emo8.Parser.Type (EmojiMap, Score)
import Emo8.Type (Size)
import Emo8.Util.Collide (sinkCanvas, sinkMapXY)
import Emo8.Util.Input (catchInput, noInput)
import Emo8.Util.State (defaultDecode, defaultEncode)
import Foreign.Generic (class Decode, class Encode)

data State
  = State
    { player :: Player
    , prevInput :: Input
    , frame :: Int
    }

type Player
  = { x :: Int
    , y :: Int
    , dy :: Int
    , appear :: Appear
    , catchJump :: Boolean
    }

data Appear
  = LeftWalk
  | RightWalk
  | LeftRun
  | RightRun

derive instance genericState :: Generic State _

instance encodeState :: Encode State where
  encode = defaultEncode

instance decodeState :: Decode State where
  decode = defaultDecode

derive instance genericAppear :: Generic Appear _

instance encodeAppear :: Encode Appear where
  encode = defaultEncode

instance decodeAppear :: Decode Appear where
  decode = defaultDecode

instance gameState ::
  Game State where
  update input (State state) = do
    newPlayer <- system state.player
    pure
      $ State
          { player: newPlayer
          , prevInput: input
          , frame: state.frame + 1
          }
    where
    system =
      canvasCollision
        <<< mapCollision
        <<< appearance
        <<< gravity
        <<< jumping
        <<< movement

    catch = catchInput state.prevInput input

    movement :: Player -> Player
    movement p = case input.isLeft, input.isRight of
      true, false -> p { x = p.x - 5 }
      false, true -> p { x = p.x + 5 }
      _, _ -> p

    jumping :: Player -> Player
    jumping p
      | catch.isW, p.dy == 0 = p { dy = p.dy + 26, catchJump = true }
      | otherwise = p { catchJump = false }

    gravity :: Player -> Player
    gravity p = np { y = p.y + np.dy }
      where
      np = p { dy = p.dy - 2 }

    appearance :: Player -> Player
    appearance p = p { appear = newAppear }
      where
      newAppear = case input.isLeft, input.isRight of
        true, false
          | isAppearRun -> LeftRun
          | otherwise -> LeftWalk
        false, true
          | isAppearRun -> RightRun
          | otherwise -> RightWalk
        _, _ -> case p.appear of
          LeftRun -> LeftWalk
          RightRun -> RightWalk
          _ -> p.appear

      isAppearRun = mod state.frame 8 < 4

    mapCollision :: Player -> Player
    mapCollision p = do
      case sinkMapXY stage mapSize walls state.player.x state.player.y emoSize p.x p.y of
        Just s
          | s.y /= 0 -> p { x = p.x - s.x, y = p.y - s.y, dy = 0 }
          | otherwise -> p { x = p.x - s.x }
        Nothing -> p

    canvasCollision :: Player -> Update Player
    canvasCollision p = do
      r <- getCanvasSize
      pure case sinkCanvas r emoSize p.x p.y of
        Just s
          | s.y /= 0 -> p { x = p.x - s.x, y = p.y - s.y, dy = 0 }
          | otherwise -> p { x = p.x - s.x }
        Nothing -> p
  draw (State state) = do
    cls C.silver
    emap stage mapSize 0 0
    emoF emoSize state.player.x state.player.y
    where
    emoF = case state.player.appear of
      LeftWalk -> emo E.personWalking
      RightWalk -> emo' E.personWalking
      LeftRun -> emo E.personRunning
      RightRun -> emo' E.personRunning
  sound (State state) = do
    when state.player.catchJump
      $ play' jump Sawtooth 64

instance gameDevState :: GameDev State where
  saveLocal (State s) =
    guard (mod s.frame 60 == 0) [ localKeys.per60frame ]
      <> guard s.player.catchJump [ localKeys.jumped ]

localKeys ::
  { jumped :: LocalKey
  , per60frame :: LocalKey
  }
localKeys =
  { jumped: LocalKey "jumped"
  , per60frame: LocalKey "per60frame"
  }

emoSize :: Size
emoSize = 32

mapSize :: Size
mapSize = 32

main :: Effect Unit
main = do
  s <- loadStateWithDefault initialState localKeys.jumped
  emo8Dev s conf
  where
  initialState =
    State
      { player:
          { x: 256
          , y: mapSize
          , dy: 0
          , catchJump: false
          , appear: LeftWalk
          }
      , prevInput: noInput
      , frame: 0
      }

  conf =
    { canvasSize:
        { width: 512
        , height: 512
        }
    , retina: true
    }

stage :: EmojiMap
stage = parse (SProxy :: SProxy Stage)

jump :: Score
jump = parse (SProxy :: SProxy Jump)

walls :: Array E.Emoji
walls = [ E.japaneseNoVacancyButton ] -- 🈵

type Stage
  = """
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈚🈚🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈚🈚🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈵🈵🈵🈵🈳🈳🈳🈳🈳🈳🈳🈳🈵🈵🈵🈵
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈵🈵🈵🈵🈵🈵🈵🈵🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈵🈵🈵🈵🈵🈵🈵🈵🈵🈵🈵🈵🈵🈵🈵🈵
  """

type Jump
  = """
  🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
  """
