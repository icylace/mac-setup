#!/usr/bin/env bash

# bat
# A cat(1) clone with wings.
# https://github.com/sharkdp/bat
brew install bat

# hyperfine
# A command-line benchmarking tool
# https://github.com/sharkdp/hyperfine
brew install hyperfine

# Qt
# Cross-platform application and UI framework
# https://www.qt.io/
brew install qt5

# ------------------------------------------------------------------------------

# cool-retro-term
# A good looking terminal emulator which mimics the old cathode display...
# https://github.com/Swordfish90/cool-retro-term
git clone --recursive https://github.com/Swordfish90/cool-retro-term.git /tmp/cool-retro-term
export CPPFLAGS="-I/usr/local/opt/qt5/include"
export LDFLAGS="-L/usr/local/opt/qt5/lib"
export PATH=/usr/local/opt/qt5/bin:$PATH
cd /tmp/cool-retro-term
qmake && make
mkdir cool-retro-term.app/Contents/PlugIns
cp -r qmltermwidget/QMLTermWidget cool-retro-term.app/Contents/PlugIns
cp -r cool-retro-term.app "$HOME/Applications"


# ------------------------------------------------------------------------------
#  Updated versions of programs that come with macOS.
# ------------------------------------------------------------------------------

# less
# A terminal pager.
# http://greenwoodsoftware.com/less/
nix-env --install --attr nixpkgs.less

# GNU Core Utilities
# Basic file, shell, and text manipulation utilities.
# https://www.gnu.org/software/coreutils/coreutils.html
nix-env --install --attr nixpkgs.coreutils-prefixed

# # GNU Grep
# # Searches input files for text matching a specified pattern.
# # https://www.gnu.org/software/grep/
# nix-env --install --attr nixpkgs.gnugrep


# ------------------------------------------------------------------------------
#  Utilities specific to macOS.
# ------------------------------------------------------------------------------

# Archey
# Displays basic system information.
# https://obihann.github.io/archey-osx/
brew install archey

# trash
# Moves files and folders to the OS X trash.
# https://hasseg.org/trash/
brew install trash
