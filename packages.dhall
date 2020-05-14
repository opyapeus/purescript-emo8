let upstream =
    https://github.com/purescript/package-sets/releases/download/psc-0.13.6-20200404/packages.dhall sha256:f239f2e215d0cbd5c203307701748581938f74c4c78f4aeffa32c11c131ef7b6

let overrides = {=}

let additions =
    { webaudio =
        { dependencies =
            ["arraybuffer", "web-html"]   
        , repo = "https://github.com/adkelley/purescript-webaudio"
        , version = "v0.2.1"
        }
    }

in  upstream // overrides // additions
