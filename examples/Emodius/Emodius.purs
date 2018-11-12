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
import Helper (beInMonitor, drawScrollMap, isCollideScrollMap, isInputCatchAny)
import Nemo (nemo)
import Nemo.Class.Game (class Game)
import Nemo.Data.Color (Color(..))
import Nemo.Data.Emoji as E
import Nemo.Draw.Action (cls, emo, emor, emor')
import Nemo.Utils (mkAsset)

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
        pure $ if isInputCatchAny input then initialPlayState else TitleState
    update input OverState =
        pure $ if isInputCatchAny input then initialState else OverState
    update input ClearState =
        pure $ if isInputCatchAny input then initialState else ClearState
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
        emor' 30 E.helicopter 384 100 100
        emo E.spiderWeb 512 400 400
        emor (-15) E.octopus 256 600 600
        emo E.pill 128 250 800
        emor 75 E.pill 128 200 600
        emo E.fastForwardButton 128 700 200
    draw OverState = do
        cls Maroon
        emo E.hole 512 250 300
        emor 160 E.helicopter 256 350 400
        emo E.recyclingSymbol 256 375 700
    draw ClearState = do
        cls Lime
        emor 15 E.helicopter 128 700 800
        emor (-15) E.octopus 256 350 350
        emo E.globeWithMeridians 512 150 150
        emo E.thumbsUp 128 200 800
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
    nemo initialState asset
