#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Haskell
+ - - - - - - - - - - - - - - - - - - - -
'

# The Haskell Tool Stack
# Stack is a cross-platform program for developing Haskell projects.
# https://haskellstack.org/

# https://docs.haskellstack.org/en/stable/install_and_upgrade/#installupgrade
curl -sSL https://get.haskellstack.org/ | sh

# stack setup
stack --resolver lts setup

# HLint
# Haskell source code suggestions
# https://github.com/ndmitchell/hlint
# http://community.haskell.org/~ndm/darcs/hlint/hlint.htm
stack install hlint

# ------------------------------------------------------------------------------

# When in a project...

# stack build

# Hoogle
# Haskell API Search
# http://hackage.haskell.org/package/hoogle
# https://www.haskell.org/hoogle/

# When in a project...
# stack hoogle
# stack hoogle generate && stack hoogle --rebuild

# intero
# Complete interactive development program for Haskell
# https://github.com/commercialhaskell/intero
# https://github.com/commercialhaskell/intero/blob/master/TOOLING.md#installing

# When in a project...
# stack build intero

# ------------------------------------------------------------------------------

# TODO: consider using this
# hedgehog
# Hedgehog is a modern property-based testing system.
# https://github.com/hedgehogqa/haskell-hedgehog

# ------------------------------------------------------------------------------

# How to uninstall Stack:
# https://docs.haskellstack.org/en/stable/README/#how-to-uninstall
