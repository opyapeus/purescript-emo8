module Data.Player where

import Prelude

import Class.Object (class Object, class ObjectDraw, position, size)
import Constants (emoSize)
import Data.Bullet (Bullet(..))
import Data.Tuple (Tuple(..))
import Nemo.Constants (scene)
import Nemo.Data.Emoji (Emoji(..))
import Nemo.Data.Input (Input(..))
import Nemo.Draw (emo', emor')
import Types (Pos)


data Player = Player
    { pos :: Pos
    , energy :: Int
    , appear :: Appear
    }

data Appear = Stable | Forword | Backword

instance objectPlayer :: Object Player where
    size _ = emoSize
    position (Player s) = s.pos

instance objectDrawPlayer :: ObjectDraw Player where
    draw o@(Player p) = emoF Helicopter (size o) (position o).x (position o).y
        where
            emoF = case p.appear of
                Stable -> emo'
                Forword -> emor' (- 30)
                Backword -> emor' 30

updatePlayer :: Input -> Player -> Player
updatePlayer input@(Input i) (Player s) =
    Player $ s
        { pos = newPos
        , energy = newEnergy
        , appear = newAppear
        }
    where
        newPos = updatePos input s.pos
        newEnergy = case Tuple (canEmit s.energy) (i.isW || i.isS || i.isD) of
            Tuple true true -> 0
            Tuple true false -> s.energy
            Tuple false _ -> s.energy + 1
        newAppear =
            case Tuple i.isLeft i.isRight of
                Tuple true false -> Backword 
                Tuple false true -> Forword
                _ -> Stable 

updatePos :: Input -> Pos -> Pos
updatePos (Input i) p = { x: nx, y: ny }
    where
        nx = case
            { l: i.isLeft, r: i.isRight } of
                { l: true , r: false } -> p.x - 5
                { l: false , r: true } -> p.x + 5
                _ -> p.x
        ny = case
            { u: i.isUp, d: i.isDown } of
                { u: true , d: false } -> p.y + 5
                { u: false , d: true } -> p.y - 5
                _ -> p.y

addBullet :: Input -> Player -> Array Bullet
addBullet (Input i) (Player p) =
    case canEmit p.energy of
        true | i.isW -> [ Upper { pos: p.pos } ]
        true | i.isS -> [ Downer { pos: p.pos } ]
        true | i.isD -> [ Normal { pos: p.pos } ]
        _ -> []

initialPlayer :: Player
initialPlayer = Player
    { pos:
        { x: 0
        , y: scene.height / 2
        }
    , energy: 30
    , appear: Stable
    }

canEmit :: Int -> Boolean
canEmit e = e > 29