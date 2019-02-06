module Data.Particle where

import Prelude

import Constants (emoSize)
import Class.Object (class ObjectDraw, class Object, position, size)
import Emo8.Action.Draw (emo)
import Emo8.Data.Emoji as E
import Types (Pos)


data Particle
    = Normal
        { pos :: Pos
        }

instance objectParticle :: Object Particle where
    size _ = emoSize
    position (Normal s) = s.pos

instance objectDrawParticle :: ObjectDraw Particle where
    draw o = emo E.globeWithMeridians (size o) (position o).x (position o).y

updateParticle :: Particle -> Particle
updateParticle (Normal s) = Normal $ s { pos { y = s.pos.y - 2 } }


initParticle :: Pos -> Particle
initParticle pos = Normal { pos: pos }