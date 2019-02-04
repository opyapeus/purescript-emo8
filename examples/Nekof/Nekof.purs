module Nekof where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Emo8 (emo8)
import Emo8.Action.Draw (cls, emap, emo)
import Emo8.Action.Sound (play)
import Emo8.Class.Game (class Game)
import Emo8.Data.Channel (Channel(..))
import Emo8.Data.Color (Color(..))
import Emo8.Data.Emoji as E
import Emo8.Data.Tone (Tone(..))
import Emo8.Input (Input)
import Emo8.Parse (RawMap(..))
import Emo8.Types (Size, SoundId)
import Emo8.Utils (defaultMonitorSize, mkAsset)
import Sound (pat0, pat1, pat2, pat3, pat4, pat5, pat6, sndNeko)

emoSize :: Size
emoSize = 32

data State = State
  { soundOn :: Maybe Part
  , life :: Int
  }

data Part
  = Pat0
  | Pat1
  | Pat2
  | Pat3
  | Pat4
  | Pat5
  | Pat6
  | Full

inputToPart :: Input -> Maybe Part
inputToPart i
  | i.catched.isUp && i.isRight || i.isUp && i.catched.isRight = Just Pat4
  | i.catched.isRight && i.isDown || i.isRight && i.catched.isDown = Just Pat5
  | i.catched.isDown && i.isLeft || i.isDown && i.catched.isLeft = Just Pat6
  | i.catched.isLeft && i.isUp || i.isLeft && i.catched.isUp = Just Full
  | i.catched.isUp = Just Pat0
  | i.catched.isRight = Just Pat1
  | i.catched.isDown = Just Pat2
  | i.catched.isLeft = Just Pat3
  | otherwise = Nothing

partToSndNum :: Part -> SoundId
partToSndNum Pat0 = 0
partToSndNum Pat1 = 1
partToSndNum Pat2 = 2
partToSndNum Pat3 = 3
partToSndNum Pat4 = 4
partToSndNum Pat5 = 5
partToSndNum Pat6 = 6
partToSndNum Full = 7

instance gameState :: Game State where
  update i (State s) =
    let nextLife = case s.soundOn of
          Just Full -> 1870
          Just Pat6 -> 110
          Just _ -> 220
          Nothing -> if s.life > 0 then s.life - 1 else s.life
    in pure <<< State $ s
      { soundOn = inputToPart i
      , life = nextLife
      }
            
  draw (State s) = do
    cls LawnGreen
    emap 0 emoSize 0 0
    emo E.cat 128 192 256
    if mod s.life 55 < 22
      then pure unit
      else emo E.footprints 64 224 256

  sound (State s) = case s.soundOn of
    Just part -> play CH1 (partToSndNum part) Saw 512
    Nothing -> pure unit

main :: Effect Unit
main = do
  asset <- mkAsset [map0] [pat0, pat1, pat2, pat3, pat4, pat5, pat6, sndNeko]
  emo8 initialState asset defaultMonitorSize

initialState :: State 
initialState = State
  { soundOn: Nothing
  , life: 0
  }

map0 :: RawMap
map0 = RawMap """
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎹🎹🎹🎹🎹🎹🎹🎹🎹🎹🎹🎹🎹🎹🎹🎹
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🕹🈳⬆️➡️⬇️⬅️↗️↘️⬆️➡️↙️🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🤖🈳↖️🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
"""
