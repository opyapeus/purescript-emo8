# NEMO

[![Build status](https://travis-ci.org/opyapeus/purescript-nemo.svg?branch=master)](https://travis-ci.org/opyapeus/purescript-nemo)

A functional game engine for creating emoji games.

※ it's beta for now

[ [日本語](README.ja.md) ]

![nemo](nemo.png)
![emodius](https://opyapeus.github.io/nemo/img/emodius-half.gif)

## Major Features

- You can write game logic well in a functional language (PureScript).
- You can express various ideas by combining emojis.
- Easy to distribute to any browser.

### Why PureScript

It is a functional language that can guarantee both descriptive power and distributability.

|            | descriptive power | distributability |
| ---------- | ----------------- | ---------------- |
| Haskell    | ○                 | △                |
| Elm        | △                 | ○                |
| PureScript | ○                 | ○                |

### Why Emoji

Because there is room for creation if there is constraint.

I am a fan of [PICO-8](https://www.lexaloffle.com/pico-8.php).
PICO-8 has strict restrictions such as dot picture and capacity, but I think that these make creating game more fun.

In the same way, if there are restrictions that only emojis can be used, there is a different enjoyment of game making.

## Specification

- Language: PureScript
- Emoji: unicode emojis ※[Supported Emojis](docs/emoji.md)
- Color: 16 html base colors
- Input Interface: Keyboard (PC), Swipe (SP, Tablet)
- Frame Rate: About 60 FPS
- Working Environment: Any brower

## Simple Manual

- [Usage](docs/usage.md)

## Examples

clone this repository first.

install

```sh
yarn
yarn postinstall
```

build

```sh
yarn build
yarn example
```

open html (dist folder) on browser

```sh
open dist/hello/index.html
open dist/basic/index.html
open dist/emodius/index.html
```

## Play Online

You can play "Emodius" of the sample program online.

- [NEMO GAMES](https://opyapeus.github.io/nemo/index.html)

You can also add games you made with NEMO here.
If you want, please make issue or PR at Github Pages [Repository](https://github.com/opyapeus/nemo)

## Under Developing List

- [ ] interpreter which executes code on the web
- [ ] performance tuning
- [ ] iOS sound support

## Wait And See

- emoji rotate (45°, 135°, 225°, 315°) problem on canvas
- default emoji presentation [CSS Fonts Module Level 4 - Editor’s Draft, 17 August 2018](https://drafts.csswg.org/css-fonts-4/#font-variant-emoji-prop)

## API Documentation

- [Module documentation on Pursuit](https://pursuit.purescript.org/packages/purescript-nemo/)

## Contribution

Since it is beta version, wait for a while.
If you find an improvement point, please give me an issue.
Thank you.

## License

[MIT](LICENSE)

※ License of emojis' graphics are owned by each vendor.