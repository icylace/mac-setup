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

# Download and install the latest LTS version of GHC.
stack --resolver lts setup


# TODO: try to automate this
# https://docs.haskellstack.org/en/stable/faq/#how-do-i-suppress-nopie-warnings-with-stack-build-on-macos




# TODO: will `stack-colors` option work if we try to use GHCi 8.6.x ?


# ------------------------------------------------------------------------------

# Hoogle
# Haskell API Search
# https://hackage.haskell.org/package/hoogle
# https://www.haskell.org/hoogle/

# When in a project...
# stack hoogle
# stack hoogle generate && stack hoogle --rebuild

# When in a project...
# stack build

# ------------------------------------------------------------------------------

# TODO: consider using this
# hedgehog
# Hedgehog is a modern property-based testing system.
# https://github.com/hedgehogqa/haskell-hedgehog

# ------------------------------------------------------------------------------

# How to uninstall Stack:
# https://docs.haskellstack.org/en/stable/README/#how-to-uninstall
