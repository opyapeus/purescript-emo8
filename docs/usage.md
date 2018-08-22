# Usage

For concrete implementation, see [examples](../examples).

## Startup

```PureScript
nemo :: forall s. Game s => s -> Asset -> Effect Unit
```

main game loop function.

To run this function, you need to define game state s which is instance of Game class.

And give asset.

## Game Class

```PureScript
class Game s where
  update :: Input -> s -> (Asset -> s)
  draw :: s -> Array RenderOp
  sound :: s -> Array AudioOp
```

s is game state data which you can flexibly defined.

each methods are called in order update, draw, sound at every frame.

## Asset

```PureScript
data Asset = Asset
  { mapData :: Array EmojiMap
  , soundData :: Array Sound
  }
```

It contains map data and sound data.

Use mkAsset function for loading map and sound data which you edit.

```PureScript
mkAsset :: Array RawMap -> Array RawSound -> Effect Asset
```

## Draw

### Draw Emoji

```PureScript
emo :: Emoji -> Size -> X -> Y -> RenderOp
```

Arguments

- Emoji: specify one of supported emoji.
- Size: emoticon size (length of one side of square)
- X: square's left position
- Y: square's bottom position

※ origin is based on left bottom. (not left top)

※ all emojis are treated as square.
Because these appearances depend on running device or browser.

### Draw Map

```PureScript
emap :: MapId -> Size -> X -> Y -> RenderOp
```

Arguments

- MapId: index of map data which you edit.
- Size: map element (emoticon) size. (not whole map size)
- X: map's left position
- Y: map's bottom position

## Sound

### Play Sound

```PureScript
play :: SoundId -> Tone -> Bpm -> AudioOp
```

Arguments

- SoundId: index of sound data which you edit.
- Tone: Oscillation type (correspond to web audio)
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

You can use [Supported Emojis](emoji.md).

## Sound Edit

※ It may need more development

```PureScript
sound0 :: RawSound
sound0 = RawSound """
🎼🎼🎼🎼🎼🎼🎛🎛🎛🎛🎛🎛
🕕🕡🕖🕢🕗🕣🕘🕤🕙🕥🕚🕦
🔈🔈🔈🔈🔈🔈🔈🔈🔈🔈🔈🔈
"""
```

- First line: effect (🎼: None, 🎛: Detune)
- Second line: scale (🕧: Code C4 ~ 🕦: Code B5)
- Third line: Volume (🔇: Mute ~ 🔊: High)