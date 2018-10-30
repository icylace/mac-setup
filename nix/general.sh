#!/usr/bin/env bash

# ascii
# List ASCII idiomatic names and octal/decimal code-point forms.
# http://catb.org/~esr/ascii/
nix-env --install --attr nixpkgs.ascii

# GNU Aspell
# Spell checker for many languages
# http://aspell.net/
nix-env --install --attr nixpkgs.aspell

# Bench
# Command-line benchmark tool
# https://github.com/Gabriel439/bench
nix-env --install --attr nixpkgs.bench

# Byobu
# Text-based window manager and terminal multiplexer
# http://byobu.co/
nix-env --install --attr nixpkgs.byobu

# di
# Disk information utility; displays everything 'df' does and more
# https://gentoo.com/di/
nix-env --install --attr nixpkgs.di

# Elvish
# A friendly and expressive Unix shell
# https://elv.sh/
nix-env --install --attr nixpkgs.elvish

# exa
# Lists files and directories.
# https://the.exa.website/
# brew cask install exa
nix-env --install --attr nixpkgs.exa

# fd
# A simple, fast and user-friendly alternative to 'find'
# https://github.com/sharkdp/fd
nix-env --install --attr nixpkgs.fd

# GNU Find Utilities
# Basic directory searching utilities.
# http://www.gnu.org/software/findutils/
# GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed.
nix-env --install --attr nixpkgs.findutils

# fzf
# 🌸 A command-line fuzzy finder
# https://github.com/junegunn/fzf
nix-env --install --attr nixpkgs.fzf

# hr
# A horizontal bar for your terminal
# https://github.com/LuRsT/hr
nix-env --install --attr nixpkgs.hr

# odt2txt
# A simple converter from OpenDocument Text to plain text
# https://github.com/dstosberg/odt2txt
nix-env --install --attr nixpkgs.odt2txt

# Pipe Viewer
# Tool for monitoring the progress of data through a pipeline.
# https://www.ivarch.com/programs/pv.shtml
nix-env --install --attr nixpkgs.pv

# tmux
# A "terminal multiplexer", it enables a number of terminals to be accessed
# and controlled from a single terminal.
# https://github.com/tmux/tmux
nix-env --install --attr nixpkgs.tmux

# Tree
# Recursive directory lister.
# http://mama.indstate.edu/users/ice/tree/
# brew install tree
nix-env --install --attr nixpkgs.tree

# w3m
# A text-mode web browser
# http://w3m.sourceforge.net/
nix-env --install --attr nixpkgs.w3m

# GNU Wget
# HTTP, HTTPS, and FTP client.
# http://www.gnu.org/software/wget/
nix-env --install --attr nixpkgs.wget
