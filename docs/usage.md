# Usage

For concrete implementation, see [examples](../examples) and [endpoint folder](../endpoint)

## Game Class

```PureScript
class Game s where
  update :: Input -> s -> Update s
  draw :: s -> Draw Unit
  sound :: s -> Sound Unit
```

`s` is a game state data type which you can flexibly define.

Each functions are executed in order update, draw, sound at every frame.

## Update Action

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

### Get Random Value (An example)

```PureScript
randomInt :: Int -> Int -> Update Int
```

Arguments

- First Int: min value
- Second Int: max value

After describing some actions, return next `s` at the end of update function.

## Draw Action

### Draw Emoji (An example)

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

### Draw Map (An example)

```PureScript
emap :: MapId -> Size -> X -> Y -> Draw Unit
```

Arguments

- MapId: index of map data that you edited.
- Size: map element (emoji) size. (not whole map size)
- X: map's left position
- Y: map's bottom position

## Sound Action

### Play Sound (An example)

```PureScript
play :: Channel -> SoundId -> Tone -> Bpm -> Sound Unit
```

Arguments

- Channel: channel type (select one of [CH1, CH2, CH3, CH4])
- SoundId: index of sound data that you edited.
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

※ 🈳 is the special emoji that represents vacant space.

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

Use `mkAsset` function for loading map and sound data that you edited.

```PureScript
mkAsset :: Array RawMap -> Array RawSound -> Effect Asset
```

## Development And Production

### Production

Main game loop function.

```PureScript
emo8 :: forall s. Game s => s -> Asset -> MonitorSize -> Effect Unit
```

### Development

Main game loop function for development.

```PureScript
emo8Dev :: forall s. GameDev s => s -> Asset -> MonitorSize -> Effect Unit
```

### GameDev Class

```PureScript
class (Game s, Encode s, Decode s) <= GameDev s where
    saveLocal :: s -> Array LocalKey
```

saveLocal function is executed after Game class's functions at every frame.
It saves state json text to localstorage with the given LocalKey array(for multiple savepoints).

### Load Saved State

```PureScript
loadStateWithDefault :: forall s. GameDev s => s -> LocalKey -> Effect s
```

Arguments

- s: fallback state which is used when localstorage key is not found.
- LocalKey: localstorage key which you saved with saveLocal function.
