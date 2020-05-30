{ name = "emo8"
, dependencies =
  [ "canvas"
  , "console"
  , "effect"
  , "foreign-generic"
  , "lists"
  , "record"
  , "record-extra"
  , "refs"
  , "signal"
  , "transformers"
  , "typelevel-prelude"
  , "webaudio"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
