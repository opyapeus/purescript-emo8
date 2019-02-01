module Data.Bullet where

import Prelude

import Constants (emoSize)
import Class.Object (class ObjectDraw, class Object, position, size)
import Emo8.Data.Emoji as E
import Emo8.Draw.Action (emo, emor)
import Types (Pos)


data Bullet
    = Normal { pos :: Pos }
    | Upper { pos :: Pos }
    | Downer { pos :: Pos }

instance objectBullet :: Object Bullet where
    size _ = emoSize

    position (Normal s) = s.pos
    position (Upper s) = s.pos
    position (Downer s) = s.pos

instance objectDrawBullet :: ObjectDraw Bullet where
    draw o = emoF E.spiderWeb (size o) (position o).x (position o).y
        where
            emoF = case o of
                Normal _ -> emo 
                Upper _ -> (emor 30)
                Downer _ -> (emor (- 30))


updateBullet :: Bullet -> Bullet
updateBullet (Normal s) = Normal $ s { pos { x = s.pos.x + 5 } }
updateBullet (Upper s) = Upper $ s { pos { x = s.pos.x + 5, y = s.pos.y + 5 } }
updateBullet (Downer s) = Downer $ s { pos { x = s.pos.x + 5, y = s.pos.y - 5 } }

