# Emo8

絵文字だけでゲームが作れるユニークな関数型2Dゲームエンジン

[ [English](README.md) ]

![emo8](emo8.jpg)
![emodius](https://opyapeus.github.io/emo8/img/emodius-half.gif)

## こんな人にどうぞ

- 絵文字だけって面白い
- 作ったゲームを簡単にシェアしたい
- PureScriptで見通しの良いプログラムを書きたい

### なぜ絵文字？

- あらゆるところで使える見慣れた素材
- LEGOブロックを組み立てる感覚でゲーム作り
- 敢えて制約があることが面白い（[PICO-8](https://www.lexaloffle.com/pico-8.php)に倣って）

### なぜPureScript？

|            | 言語の抽象力 | 配布性 |
| ---------- | ------------ | ------ |
| PureScript | ○            | ○      |
| Haskell    | ○            | △ ※1   |
| Elm        | △ ※2         | ○      |

- ※1: JavaScriptへの変換に難がある
- ※2: 型クラスがない

## 特徴

|                  |                                               |
| ---------------- | --------------------------------------------- |
| 画面サイズ       | 縦横可変 256px~1024px（目安）                 |
| 背景色           | 140色（HTML名前付きカラー ）                  |
| 素材             | Unicode Emoji v13.0 （Single code pointのみ） |
| コントローラ     | 8ボタン（上下左右×2）                         |
| マップ           | 絵文字のマップ                                |
| サウンド         | 絵文字のサウンド                              |
| 開発言語         | PureScript                                    |
| 出力ファイル容量 | ~1MB（目安）                                  |
| フレームレート   | 約60FPS（requestAnimationFrame）              |
| 動作環境         | Webブラウザ                                   |

## コントローラ

### キーボード入力

```
 /¯¯¯\_/¯¯¯\
|  W  |  ↑  |
| A D | ← → |
|  S  |  ↓  |
 \___/¯\___/
```

### スクリーンスワイプ

```
|¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯|
|   👆    |   👆   |
| 👈   👉 | 👈   👉 |
|   👇    |   👇   |
|________|________|
```

## 素材の編集

### マップ

```
🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳⛅🈳🈳🎌🈳🈳🌧🈳
🈳🈳🈳🌳🗻🌳🈳🈳🈳
🈳🈳🌳🗻🗻🗻🌳🈳🈳
🈳🌳🗻🗻🗻🗻🗻🌳🈳
🌳🗻🗻🗻🗻🗻🗻🗻🌳
```

### サウンド

```
🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🎹🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳
🈳🈳🈳🈳🈳🈳🈳🈳🈳🈳🎹
```

## マニュアル

- [Usage Overview](doc/usage.md)
- [Module documentation on Pursuit](https://pursuit.purescript.org/packages/purescript-emo8)

## サンプルプログラム

実装例は [example](example) を見てください。

```
yarn
```

### ファイル出力

```
yarn bundle:example
```

```
open dist/example/hello/index.html
open dist/example/basic/index.html
open dist/example/emodius/index.html
```

### 開発

```
yarn build
```

```
yarn dev
```

## 既知の問題

- canvasの絵文字の回転 (45°, 135°, 225°, 315°) 表示の問題 [Why won't emojis render when rotated to 45 (or 315) degrees?](https://stackoverflow.com/questions/39749540/why-wont-emojis-render-when-rotated-to-45-or-315-degrees)

## ライセンス

[MIT](LICENSE)
