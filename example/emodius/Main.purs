module Main where

import Prelude
import Class.Object (draw, position)
import Collision (isCollideObjects, isOutOfWorld)
import Constants (canvasSize, speed)
import Data.Array (any, filterA, partition)
import Data.Bullet (Bullet, updateBullet)
import Data.Enemy (Enemy(..), addEnemyBullet, emergeTable, updateEnemy)
import Data.EnemyBullet (EnemyBullet, updateEnemyBullet)
import Data.Foldable (traverse_)
import Data.Particle (Particle, initParticle, updateParticle)
import Data.Player (Player, addBullet, initialPlayer, updatePlayer)
import Effect (Effect)
import Emo8 (emo8)
import Emo8.Data.Color as C
import Emo8.Data.Emoji as E
import Emo8.Data.Input (Input)
import Emo8.Game (class Game)
import Emo8.Game.Draw (cls, emo, emor, emor')
import Emo8.Util.Input (anyInput, catchInput, everyInput)
import Helper (beInMonitor, drawScrollMap, isCollideScrollMap)

data State
  = TitleState
    { prevInput :: Input }
  | OverState
    { prevInput :: Input }
  | ClearState
    { prevInput :: Input }
  | PlayState
    { distance :: Int
    , player :: Player
    , bullets :: Array Bullet
    , enemies :: Array Enemy
    , particles :: Array Particle
    , enemyBullets :: Array EnemyBullet
    }

instance gameState :: Game State where
  update input (TitleState s)
    | anyInput (catchInput s.prevInput input) = pure initialPlayState
    | otherwise = pure $ TitleState { prevInput: input }
  update input (OverState s)
    | anyInput (catchInput s.prevInput input) = pure initialState
    | otherwise = pure $ OverState { prevInput: input }
  update input (ClearState s)
    | anyInput (catchInput s.prevInput input) = pure initialState
    | otherwise = pure $ ClearState { prevInput: input }
  update input (PlayState s) = do
    -- update pos
    let
      np = updatePlayer input s.player

      nbullets = map updateBullet s.bullets

      nenemies = map (updateEnemy s.player) s.enemies

      nparticles = map updateParticle s.particles

      nenemyBullets = map updateEnemyBullet s.enemyBullets
    -- player collision
    let
      isMapColl = isCollideScrollMap s.distance np

      isEnemyColl = any (isCollideObjects np) nenemies

      isEnemyBulletColl = any (isCollideObjects np) nenemyBullets
    -- separate objects
    let
      { yes: collidedEnemies, no: notCollidedEnemies } = partition (\e -> any (isCollideObjects e) nbullets) nenemies

      { yes: collidedBullets, no: notCollidedBullets } = partition (\b -> any (isCollideObjects b) nenemies) nbullets
    -- add new objects
    let
      newBullets = addBullet input s.player

      newParticles = map (\e -> initParticle (position e)) collidedEnemies

      newEnemies = emergeTable s.distance

      newEnemyBullets = notCollidedEnemies >>= addEnemyBullet s.player
    -- fix player position
    nnp <- beInMonitor s.player np
    -- delete objects (out of monitor)
    nnbullets <- filterA (pure <<< not <=< isOutOfWorld) notCollidedBullets
    nnenemies <- filterA (pure <<< not <=< isOutOfWorld) notCollidedEnemies
    nnparticles <- filterA (pure <<< not <=< isOutOfWorld) nparticles
    nnenemyBullets <- filterA (pure <<< not <=< isOutOfWorld) nenemyBullets
    -- game condition
    let
      isGameOver = isMapColl || isEnemyColl || isEnemyBulletColl

      isCatchOct (Oct _) = true

      isCatchOct _ = false

      isGameClear = any isCatchOct collidedEnemies
    pure
      $ case isGameClear, isGameOver of
          true, _ -> ClearState { prevInput: input }
          false, true -> OverState { prevInput: input }
          false, false ->
            PlayState
              $ s
                  { distance = s.distance + speed
                  , player = nnp
                  , bullets = nnbullets <> newBullets
                  , enemies = nnenemies <> newEnemies
                  , particles = nnparticles <> newParticles
                  , enemyBullets = nnenemyBullets <> newEnemyBullets
                  }
  draw (TitleState _) = do
    cls C.aqua
    emor' 30 E.helicopter 192 50 50
    emo E.spiderWeb 256 200 200
    emor (-15) E.octopus 128 300 300
    emo E.pill 64 150 400
    emor 75 E.pill 64 100 300
    emo E.fastForwardButton 64 350 100
  draw (OverState _) = do
    cls C.maroon
    emo E.hole 256 125 150
    emor 160 E.helicopter 128 175 200
    emo E.recyclingSymbol 128 185 350
  draw (ClearState _) = do
    cls C.lime
    emor 15 E.helicopter 64 350 400
    emor (-15) E.octopus 128 175 175
    emo E.globeWithMeridians 256 75 75
    emo E.thumbsUp 64 100 400
  draw (PlayState s) = do
    cls C.aqua
    drawScrollMap s.distance
    draw s.player
    traverse_ draw s.bullets
    traverse_ draw s.enemies
    traverse_ draw s.particles
    traverse_ draw s.enemyBullets
  sound _ = pure unit

initialPlayState :: State
initialPlayState =
  PlayState
    { distance: 0
    , player: initialPlayer
    , bullets: []
    , enemies: []
    , particles: []
    , enemyBullets: []
    }

initialState :: State
initialState = TitleState { prevInput: everyInput }

main :: Effect Unit
main = do
  emo8 initialState conf
  where
  conf = { canvasSize: canvasSize }
