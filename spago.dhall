{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "my-project"
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
