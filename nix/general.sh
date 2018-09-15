#!/usr/bin/env bash

# ascii
# List ASCII idiomatic names and octal/decimal code-point forms.
# http://catb.org/~esr/ascii/
nix-env --install --attr nixpkgs.ascii

# Bench
# Command-line benchmark tool
# https://github.com/Gabriel439/bench
nix-env --install --attr nixpkgs.bench

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

# Pipe Viewer
# Tool for monitoring the progress of data through a pipeline.
# https://www.ivarch.com/programs/pv.shtml
nix-env --install --attr nixpkgs.pv

# ranger
# A console file manager.
# http://ranger.nongnu.org/
nix-env --install --attr nixpkgs.ranger

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

# GNU Wget
# HTTP, HTTPS, and FTP client.
# http://www.gnu.org/software/wget/
nix-env --install --attr nixpkgs.wget
