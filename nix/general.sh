#!/usr/bin/env bash

# # bat
# # A cat(1) clone with syntax highlighting and Git integration
# # https://github.com/sharkdp/bat
# nix-env --install --attr nixpkgs.bat
# # TODO: try later because its tests are not being passed

# Byobu
# Text-based window manager and terminal multiplexer
# http://byobu.co/
nix-env --install --attr nixpkgs.byobu

# GNU Core Utilities
# Basic file, shell, and text manipulation utilities.
# https://www.gnu.org/software/coreutils/coreutils.html
nix-env --install --attr nixpkgs.coreutils-prefixed

# Elvish
# A friendly and expressive Unix shell
# https://elv.sh/
nix-env --install --attr nixpkgs.elvish

# exa
# A modern replacement for ls.
# https://the.exa.website/
nix-env --install --attr nixpkgs.exa

# fd
# A simple, fast and user-friendly alternative to 'find'
# https://github.com/sharkdp/fd
nix-env --install --attr nixpkgs.fd

# fzf
# 🌸 A command-line fuzzy finder
# https://github.com/junegunn/fzf
nix-env --install --attr nixpkgs.fzf

# Graphviz
# Graphviz is open source graph visualization software.
# https://graphviz.org/
nix-env --install --attr nixpkgs.graphviz

# Heroku CLI
# Everything you need to get started using Heroku
# https://devcenter.heroku.com/articles/heroku-cli
nix-env --install --attr nixpkgs.heroku

# highlight
# Source code to highlighted text formatter.
# http://andre-simon.de/doku/highlight/en/highlight.php
nix-env --install --attr nixpkgs.highlight

# HTTPie
# A command line HTTP client whose goal is to make CLI human-friendly
# https://httpie.org/
nix-env --install --attr nixpkgs.httpie

# hyperfine
# Command-line benchmarking tool
# https://github.com/sharkdp/hyperfine
nix-env --install --attr nixpkgs.hyperfine

# jq
# A lightweight and flexible command-line JSON processor
# https://stedolan.github.io/jq/
nix-env --install --attr nixpkgs.jq

# less
# A more advanced file pager than ‘more’
# http://greenwoodsoftware.com/less/
nix-env --install --attr nixpkgs.less

# MOST
# A terminal pager similar to 'more' and 'less'
# https://jedsoft.org/most/
nix-env --install --attr nixpkgs.most

# Neovim
# Vim text editor fork focused on extensibility and agility
# https://neovim.io/
nix-env --install --attr nixpkgs.neovim

# ripgrep
# A utility that combines the usability of The Silver Searcher with
# the raw speed of grep
# https://blog.burntsushi.net/ripgrep/
# https://github.com/BurntSushi/ripgrep
nix-env --install --attr nixpkgs.ripgrep

# tmux
# A "terminal multiplexer", it enables a number of terminals to be accessed
# and controlled from a single terminal.
# https://github.com/tmux/tmux
nix-env --install --attr nixpkgs.tmux
