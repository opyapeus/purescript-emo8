module Emo8.Boot
  ( State
  , initialState
  ) where

import Prelude

import Emo8.Class.Game (class Game)
import Emo8.Class.GameBoot (class GameBoot)
import Emo8.Data.Color (Color(..))
import Emo8.Data.Emoji as E
import Emo8.Draw.Action (cls, emo)
import Emo8.Types (MonitorSize)

data State = State
  { cnt :: Int
  , ms :: MonitorSize
  }

instance gameState :: Game State where
  update _ (State s) = pure <<< State $ s { cnt = s.cnt + 1 }

  draw (State s) = do
    cls Maroon
    -- TODO: ms
    emo E.turtle 128 s.cnt 192
    emo E.personRunning 128 192 s.cnt

  sound _ = pure unit

instance gameBootState :: GameBoot State where
  finished (State s) = s.cnt > 180

initialState :: MonitorSize -> State
initialState ms = State
  { ms
  , cnt: 0
  }
