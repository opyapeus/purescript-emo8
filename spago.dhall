{ name = "emo8"
, dependencies =
  [ "canvas"
  , "console"
  , "effect"
  , "foreign-generic"
  , "lists"
  , "psci-support"
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
