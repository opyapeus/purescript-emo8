module Data.Player where

import Prelude

import Class.Object (class Object, class ObjectDraw, position, size)
import Constants (emoSize)
import Data.Bullet (Bullet(..))
import Nemo.Constants (scene)
import Nemo.Data.Emoji as E
import Nemo.Input (Input)
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
    draw o@(Player p) = emoF E.helicopter (size o) (position o).x (position o).y
        where
            emoF = case p.appear of
                Stable -> emo'
                Forword -> emor' (- 30)
                Backword -> emor' 30

updatePlayer :: Input -> Player -> Player
updatePlayer i (Player s) =
    Player $ s
        { pos = newPos
        , energy = newEnergy
        , appear = newAppear
        }
    where
        newPos = updatePos i s.pos
        newEnergy = case (canEmit s.energy), (i.isW || i.isS || i.isD) of
            true, true -> 0
            true, false -> s.energy
            false, _ -> s.energy + 1
        newAppear =
            case i.isLeft, i.isRight of
                true, false -> Backword 
                false, true -> Forword
                _, _ -> Stable 

updatePos :: Input -> Pos -> Pos
updatePos i p = { x: nx, y: ny }
    where
        nx = case i.isLeft, i.isRight of
                true, false -> p.x - 5
                false, true -> p.x + 5
                _, _ -> p.x
        ny = case i.isUp, i.isDown of
                true, false -> p.y + 5
                false, true -> p.y - 5
                _, _ -> p.y

addBullet :: Input -> Player -> Array Bullet
addBullet i (Player p) =
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