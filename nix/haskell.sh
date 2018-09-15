#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Haskell
+ - - - - - - - - - - - - - - - - - - - -
'

# The Haskell Tool Stack
# Stack is a cross-platform program for developing Haskell projects.
# https://haskellstack.org/
nix-env --install --attr nixpkgs.stack

# HLint
# Haskell source code suggestions
# https://github.com/ndmitchell/hlint
nix-env --install --attr nixpkgs.hlint

# intero
# Complete interactive development program for Haskell
# https://github.com/commercialhaskell/intero
# https://github.com/commercialhaskell/intero/blob/master/TOOLING.md#installing
stack build intero




# hedgehog
# Hedgehog is a modern property-based testing system.
# https://github.com/hedgehogqa/haskell-hedgehog
