module Main where

import Prelude
import Data.Array (catMaybes)
import Data.Generic.Rep (class Generic)
import Data.Maybe (Maybe(..))
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
import Emo8.Game.Update (Update', isCollideCanvas)
import Emo8.GameDev (class GameDev, loadStateWithDefault)
import Emo8.Parser (parse)
import Emo8.Parser.Type (EmojiMap, Score)
import Emo8.Type (X, Y, Size)
import Emo8.Util.Collide (isCollideMap)
import Emo8.Util.Input (catchInput, noInput)
import Emo8.Util.State (defaultDecode, defaultEncode)
import Foreign.Generic (class Decode, class Encode)

data State
  = State
    { x :: Int
    , y :: Int
    , dy :: Int
    , isJump :: Boolean
    , appear :: Appear
    , prevInput :: Input
    , frame :: Int
    }

derive instance genericState :: Generic State _

instance encodeState :: Encode State where
  encode = defaultEncode

instance decodeState :: Decode State where
  decode = defaultDecode

data Appear
  = LeftWalk
  | RightWalk
  | LeftRun
  | RightRun

derive instance genericAppear :: Generic Appear _

instance encodeAppear :: Encode Appear where
  encode = defaultEncode

instance decodeAppear :: Decode Appear where
  decode = defaultDecode

instance gameState ::
  Game State where
  update input (State state) = do
    let
      nx = case input.isLeft, input.isRight of
        true, false -> state.x - 4
        false, true -> state.x + 4
        _, _ -> state.x
    -- next y, dy
    canJump <- isCollide state.x (state.y - gravity)
    let
      isJump = canJump && isCatchWASD

      ddy = if isJump then 25 else 0

      ndy = state.dy - gravity + ddy

      ny = state.y + ndy
    -- final x, y, dy
    -- FIXME: rough adjust
    isCollX <- isCollide nx state.y
    isCollY <- isCollide state.x ny
    let
      nnx = if isCollX then state.x else nx

      nny = if isCollY then state.y else ny

      nndy = if isCollY then gravity else ndy
    -- next appearance
    let
      isAppearRun = mod state.frame 8 < 4

      appear = case input.isLeft, input.isRight of
        true, false -> if isAppearRun then LeftRun else LeftWalk
        false, true -> if isAppearRun then RightRun else RightWalk
        _, _ -> case state.appear of
          LeftRun -> LeftWalk
          RightRun -> RightWalk
          _ -> state.appear
    -- next state  
    pure <<< State
      $ state
          { x = nnx
          , y = nny
          , dy = nndy
          , isJump = isJump
          , appear = appear
          , prevInput = input
          , frame = state.frame + 1
          }
    where
    catch = (catchInput state.prevInput input)

    isCatchWASD = catch.isW || catch.isA || catch.isS || catch.isD

    isCollide :: X -> Y -> Update' Boolean
    isCollide x y = do
      let
        isMapColl = isCollideMap stage mapSize walls emoSize x y
      isCanvasColl <- isCollideCanvas emoSize x y
      pure $ isMapColl || isCanvasColl
  draw (State state) = do
    cls C.silver
    emap stage emoSize 0 0
    emoF emoSize state.x state.y
    where
    emoF = case state.appear of
      LeftWalk -> emo E.personWalking
      RightWalk -> emo' E.personWalking
      LeftRun -> emo E.personRunning
      RightRun -> emo' E.personRunning
  sound (State state) = do
    when state.isJump
      $ play' jump Sawtooth 64

instance gameDevState :: GameDev State where
  saveLocal (State s) =
    catMaybes
      [ if mod s.frame 60 == 0 then Just localKeys.per60frame else Nothing
      , if s.isJump then Just localKeys.jumped else Nothing
      ]

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

gravity :: Int
gravity = 2

walls :: Array E.Emoji
walls = [ E.japaneseNoVacancyButton ] -- 🈵

main :: Effect Unit
main = do
  s <- loadStateWithDefault initialState localKeys.jumped
  emo8Dev s conf
  where
  initialState =
    State
      { x: 256
      , y: mapSize
      , dy: 0
      , isJump: false
      , appear: LeftWalk
      , prevInput: noInput
      , frame: 0
      }

  conf =
    { canvasSize:
        { width: 512
        , height: 512
        }
    }

stage :: EmojiMap
stage = parse (SProxy :: SProxy Stage)

jump :: Score
jump = parse (SProxy :: SProxy Jump)

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
  🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳
  🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
  """
