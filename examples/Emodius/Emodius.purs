module Emodius where

import Prelude

import Asset (map0, map1, map2, map3)
import Class.Object (draw, position)
import Collision (isCollideObjects, isOutOfWorld)
import Constants (speed)
import Data.Array (any, filter, partition)
import Data.Bullet (Bullet, updateBullet)
import Data.Enemy (Enemy(..), addEnemyBullet, emergeTable, updateEnemy)
import Data.EnemyBullet (EnemyBullet, updateEnemyBullet)
import Data.Foldable (traverse_)
import Data.Particle (Particle, initParticle, updateParticle)
import Data.Player (Player, addBullet, initialPlayer, updatePlayer)
import Effect (Effect)
import Emo8 (emo8)
import Emo8.Class.Game (class Game)
import Emo8.Data.Color (Color(..))
import Emo8.Data.Emoji as E
import Emo8.Action.Draw (cls, emo, emor, emor')
import Emo8.Utils (defaultMonitorSize, isCatchAny, mkAsset)
import Helper (beInMonitor, drawScrollMap, isCollideScrollMap)

data State
    = TitleState
    | OverState
    | ClearState
    | PlayState
        { distance :: Int
        , player :: Player
        , bullets :: Array Bullet
        , enemies :: Array Enemy
        , particles :: Array Particle
        , enemyBullets :: Array EnemyBullet
        }

instance gameState :: Game State where
    update input TitleState =
        pure $ if isCatchAny input then initialPlayState else TitleState
    update input OverState =
        pure $ if isCatchAny input then initialState else OverState
    update input ClearState =
        pure $ if isCatchAny input then initialState else ClearState
    update input (PlayState s) = do
        -- update pos
        let np = updatePlayer input s.player
            nbullets = map updateBullet s.bullets
            nenemies = map (updateEnemy s.player) s.enemies
            nparticles = map updateParticle s.particles
            nenemyBullets = map updateEnemyBullet s.enemyBullets

        -- player collision
        isMapColl <- isCollideScrollMap s.distance np
        let isEnemyColl = any (isCollideObjects np) nenemies
            isEnemyBulletColl = any (isCollideObjects np) nenemyBullets

        -- separate objects
        let { yes: collidedEnemies, no: notCollidedEnemies } = partition (\e -> any (isCollideObjects e) nbullets) nenemies
            { yes: collidedBullets, no: notCollidedBullets } = partition (\b -> any (isCollideObjects b) nenemies) nbullets

        -- add new objects
        let newBullets = addBullet input s.player
            newParticles = map (\e -> initParticle (position e)) collidedEnemies
            newEnemies = emergeTable s.distance
            newEnemyBullets = notCollidedEnemies >>= addEnemyBullet s.player

        -- fix player position
        let nnp = beInMonitor s.player np

        -- delete objects (out of monitor)
        let nnbullets = filter (not <<< isOutOfWorld) notCollidedBullets
            nnenemies = filter (not <<< isOutOfWorld) notCollidedEnemies
            nnparticles = filter (not <<< isOutOfWorld) nparticles
            nnenemyBullets = filter (not <<< isOutOfWorld) nenemyBullets

        -- game condition
        let isGameOver = isMapColl || isEnemyColl || isEnemyBulletColl
            isCatchOct (Oct _) = true
            isCatchOct _ = false  
            isGameClear = any isCatchOct collidedEnemies

        pure $ case isGameClear, isGameOver of
            true, _ -> ClearState
            false, true -> OverState
            false, false -> PlayState $ s 
                { distance = s.distance + speed
                , player = nnp
                , bullets = nnbullets <> newBullets
                , enemies = nnenemies <> newEnemies
                , particles = nnparticles <> newParticles
                , enemyBullets = nnenemyBullets <> newEnemyBullets
                }

    draw TitleState = do
        cls Aqua
        emor' 30 E.helicopter 192 50 50
        emo E.spiderWeb 256 200 200
        emor (-15) E.octopus 128 300 300
        emo E.pill 64 150 400
        emor 75 E.pill 64 100 300
        emo E.fastForwardButton 64 350 100
    draw OverState = do
        cls Maroon
        emo E.hole 256 125 150
        emor 160 E.helicopter 128 175 200
        emo E.recyclingSymbol 128 185 350
    draw ClearState = do
        cls Lime
        emor 15 E.helicopter 64 350 400
        emor (-15) E.octopus 128 175 175
        emo E.globeWithMeridians 256 75 75
        emo E.thumbsUp 64 100 400
    draw (PlayState s) = do
        cls Aqua
        drawScrollMap s.distance
        draw s.player
        traverse_ draw s.bullets
        traverse_ draw s.enemies
        traverse_ draw s.particles
        traverse_ draw s.enemyBullets

    sound _ = pure unit

initialPlayState :: State
initialPlayState = PlayState
    { distance: 0
    , player: initialPlayer
    , bullets: []
    , enemies: []
    , particles: []
    , enemyBullets : []
    }

initialState :: State
initialState = TitleState

main :: Effect Unit
main = do
    asset <- mkAsset
        [map0, map1, map2, map3]
        []
    emo8 initialState asset defaultMonitorSize
