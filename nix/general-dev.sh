#!/usr/bin/env bash

# highlight
# Source code to highlighted text formatter.
# http://andre-simon.de/doku/highlight/en/highlight.php
nix-env --install --attr nixpkgs.highlight

# HTTPie
# HTTP client.
# http://httpie.org/
nix-env --install --attr nixpkgs.httpie

# icdiff
# A diff program that shows comparisons side-by-side.
# http://www.jefftk.com/icdiff
nix-env --install --attr nixpkgs.icdiff

# jq
# JSON processor.
# http://stedolan.github.io/jq/
nix-env --install --attr nixpkgs.jq

# Neovim
# Text editor.
# https://neovim.io/
nix-env --install --attr nixpkgs.neovim

# pup
# HTML processor.
# https://github.com/EricChiang/pup
nix-env --install --attr nixpkgs.pup

# ShellCheck
# Finds bugs in your shell scripts.
# http://www.shellcheck.net/
nix-env --install --attr nixpkgs.shellcheck




# dwdiff
# A diff program that operates at the word level instead of the line level.
# http://os.ghalkes.nl/dwdiff.html
brew install dwdiff

# Heroku CLI
# Manages Heroku apps from the command line.
# https://devcenter.heroku.com/articles/heroku-cli
brew install heroku



# # PureScript
# # A strongly-typed functional programming language that compiles to JavaScript
# # http://www.purescript.org/
# brew install purescript
