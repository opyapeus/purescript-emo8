# Usage

For concrete implementation, see [examples](../examples) and [public folder](../public)

## Game Class

```PureScript
class Game s where
  update :: Input -> s -> Update s
  draw :: s -> Draw Unit
  sound :: s -> Sound Unit
```

`s` is game state data which you can flexibly define.

Each methods are called in order update, draw, sound at every frame.

## Update

### Input

```PureScript
type Input =
  { isLeft :: Boolean
  , isRight :: Boolean
  , isUp :: Boolean
  , isDown :: Boolean
  , isW :: Boolean
  , isA :: Boolean
  , isS :: Boolean
  , isD :: Boolean
  ...
  }
```

### Get Random Value

```PureScript
randomInt :: Int -> Int -> Update Int
```

Arguments

- First Int: min value
- Second Int: max value

After describing actions and some calculations, return `s` at the end of update function.

## Draw

### Draw Emoji

```PureScript
emo :: Emoji -> Size -> X -> Y -> Draw Unit
```

Arguments

- Emoji: specify one of supported emoji
- Size: emoji size (length of one side of square)
- X: square's left position
- Y: square's bottom position

※ Origin is based on left bottom. (not left top)

※ All emojis are treated as square.
Because these appearances depend on running device or browser.

### Draw Map

```PureScript
emap :: MapId -> Size -> X -> Y -> Draw Unit
```

Arguments

- MapId: index of map data that you edit.
- Size: map element (emoji) size. (not whole map size)
- X: map's left position
- Y: map's bottom position

## Sound

### Play Sound

```PureScript
play :: SoundId -> Tone -> Bpm -> Sound Unit
```

Arguments

- SoundId: index of sound data that you edit.
- Tone: oscillation type (select one of [Sin, Sq, Tri, Saw, Noise])
- Bpm: tempo (beat per minute)

## Map Edit

```PureScript
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
```

🈳 is special emoji that represents vacant space.

## Sound Edit

```PureScript
sound0 :: RawSound
sound0 = RawSound """
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
```

- First column: effect (🎼: None, 🎛: Detune)
- Second column: Volume (🔇: Mute ~ 🔊: High)
- Third column: octave (1️⃣: Octave 1 ~ 7️⃣: Octave 7)
- Forth~ columns: codes (🎹: play, 🈳: not play)

※ Max play codes per line: 5

※ Octave orders: 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 1 (loop)

### Code Mean Examples

```plain
4️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means C4 (261.626xxx Hz)
4️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means A4 (440 Hz)
5️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means C5 (523.251xxx Hz)
5️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means A5 (880 Hz)

4️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means C5 (523.251xxx Hz)
5️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means C5 (523.251xxx Hz)
5️⃣🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means C6 (1046.502xxx Hz)
6️⃣🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means C6 (1046.502xxx Hz)

5️⃣🎹🈳🈳🈳🎹🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means C5 major chord
5️⃣🈳🈳🎹🈳🈳🎹🈳🈳🈳🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳: means D5 minor chord
```

## Asset

```PureScript
type Asset =
  { mapData :: Array EmojiMap
  , soundData :: Array Sound
  }
```

It contains map data and sound data.

Use `mkAsset` function for loading map and sound data that you edit.

```PureScript
mkAsset :: Array RawMap -> Array RawSound -> Effect Asset
```

## Startup

### Production

```PureScript
nemo :: forall s. Game s => s -> Asset -> Effect Unit
```

Main game loop function.

To run this function, you need to define game state s which is instance of Game class.

And give asset.

### Development

```PureScript
nemoDev :: forall s. Show s => Game s => s -> Asset -> DebugConfig -> Effect Unit
```

Main game loop function for development.

State s should be instance of Show class for saving state.

Give DebugConfig. (ex: `defaultDebugConfig`)

For convenience, special key signal below.

- Alt + 1: Resume game cycle
- Alt + 2: Suspend game cycle
- Alt + 3: Forward one frame
- Alt + 4: Load game state (default is initial state)
- Alt + 5: Save game state (output current state in browser console and update state which will be loaded)
