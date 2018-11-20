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


# TODO: try to automate this
# https://docs.haskellstack.org/en/stable/faq/#how-do-i-suppress-nopie-warnings-with-stack-build-on-macos



# TODO: mention how you need to `stack build` stuff again when updating to a newer LTS.  maybe it works for any resolver, too?

# TODO: maybe `stack install` is a better way to go ?

# TODO: will `stack-colors` option work if we try to use GHCi 8.6.x ?

# TODO: add detail...
stack build hscolour
stack build prettyprinter
stack build pretty-show


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
# https://hackage.haskell.org/package/hoogle
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
