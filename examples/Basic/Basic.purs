module Basic where

import Prelude

import Data.Array (catMaybes)
import Data.Generic.Rep (class Generic)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Emo.FFI.LocalStorage (LocalKey(..))
import Emo8 (emo8Dev)
import Emo8.Class.Game (class Game)
import Emo8.Class.GameDev (class GameDev, loadStateWithDefault)
import Emo8.Data.Color (Color(..))
import Emo8.Data.Emoji as E
import Emo8.Data.Tone (Tone(..))
import Emo8.Draw.Action (cls, emap, emo, emo')
import Emo8.Parse (RawMap(..), RawSound(..))
import Emo8.Sound.Action (play)
import Emo8.Types (Size, X, Y)
import Emo8.Update.Action (Update, isMapCollide)
import Emo8.Utils (defaultMonitorSize, isMonitorCollide, mkAsset)
import Foreign.Class (class Decode, class Encode)
import Foreign.Generic (defaultOptions, genericDecode, genericEncode)

emoSize :: Size
emoSize = 32

mapSize :: Size
mapSize = 32

gravity :: Int
gravity = 2

data State = State
  { x :: Int
  , y :: Int
  , dy :: Int
  , isJump :: Boolean
  , appear :: Appear
  , frame :: Int
  }

data Appear = LeftWalk | RightWalk | LeftRun | RightRun

instance gameState :: Game State where
  update input (State state) = do
    -- next x
    let nx = case input.isLeft, input.isRight of
          true, false -> state.x - 5
          false, true-> state.x + 5
          _, _ -> state.x

    -- next y, dy
    canJump <- isCollide state.x (state.y - gravity)
    let isJump = canJump && input.catched.isUp
        ddy = if isJump then 25 else 0
        ndy = state.dy - gravity + ddy
        ny = state.y + ndy

    -- final x, y, dy
    -- FIXME: rough adjust
    isCollX <- isCollide nx state.y
    isCollY <- isCollide state.x ny
    let nnx = if isCollX then state.x else nx
        nny = if isCollY then state.y else ny
        nndy = if isCollY then gravity else ndy

    -- next appearance
    let isAppearRun = mod state.frame 8 < 4
        appear = case input.isLeft, input.isRight of
          true, false -> if isAppearRun then LeftRun else LeftWalk 
          false, true -> if isAppearRun then RightRun else RightWalk
          _, _ -> case state.appear of
                LeftRun -> LeftWalk
                RightRun -> RightWalk
                _ -> state.appear

    -- next state  
    pure <<< State $ state
      { x = nnx
      , y = nny
      , dy = nndy
      , isJump = isJump
      , appear = appear
      , frame = state.frame + 1
      }
    where
      isCollide :: X -> Y -> Update Boolean
      isCollide x y = do
        isMapColl <- isMapCollide 0 mapSize walls emoSize x y
        let isMonitorColl = isMonitorCollide defaultMonitorSize emoSize x y
        pure $ isMapColl || isMonitorColl

  draw (State state) = do
    cls Silver
    emap 0 emoSize 0 0
    emoF emoSize state.x state.y
    where
      emoF = case state.appear of
        LeftWalk -> emo E.personWalking
        RightWalk -> emo' E.personWalking
        LeftRun -> emo E.personRunning
        RightRun -> emo' E.personRunning

  sound (State state) = do
    when state.isJump $
      play 0 Saw 4096

derive instance genericAppear :: Generic Appear _
instance encodeAppear :: Encode Appear where
  encode = genericEncode defaultOptions
instance decodeAppear :: Decode Appear where
  decode = genericDecode defaultOptions

derive instance genericState :: Generic State _
instance decodeState :: Decode State where
  decode = genericDecode defaultOptions
instance encodeState :: Encode State where
  encode = genericEncode defaultOptions

instance gameDevState :: GameDev State where
  saveLocal (State s) = catMaybes
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

main :: Effect Unit
main = do
  s <- loadStateWithDefault initialState localKeys.jumped
  asset <- mkAsset [map0] [snd0]
  emo8Dev s asset defaultMonitorSize

initialState :: State 
initialState = State
  { x: defaultMonitorSize.width / 2
  , y: mapSize
  , dy: 0
  , isJump: false
  , appear: LeftWalk
  , frame: 0
  }

walls :: Array E.Emoji
walls = [E.japaneseNoVacancyButton] -- 🈵

map0 :: RawMap
map0 = RawMap """
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

snd0 :: RawSound
snd0 = RawSound """
🎼🔈5️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎼🔈5️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""
