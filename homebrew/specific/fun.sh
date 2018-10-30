#!/usr/bin/env bash

# Access game formulas.
brew tap homebrew/homebrew-games

# Brogue
# Roguelike game
# https://sites.google.com/site/broguegame/
brew install brogue

# GNU Chess
# GNU Chess is a chess-playing program.
# https://www.gnu.org/software/chess/
brew install gnu-chess

# MAME
# Multiple Arcade Machine Emulator
# https://www.mamedev.org/
brew install mame

# PacVim
# Learn vim commands via a game
# https://github.com/jmoon018/PacVim
brew install pacvim


# might be best to install this manually
# brew cask install battle-net

# Boxer
# The DOS game emulator that’s fit for your Mac.
# http://boxerapp.com/
brew cask install boxer

# OpenEmu
# 🕹 Retro video game emulation for macOS
# https://openemu.org/
brew cask install openemu

# Steam
# The ultimate entertainment platform.
# https://store.steampowered.com/about/
brew cask install steam


# ------------------------------------------------------------------------------
#  Apps to install manually via the Mac App Store.
# ------------------------------------------------------------------------------

# Joystick Show
# http://chibatacreations.com/app/joystickshow/


# ------------------------------------------------------------------------------
#  Games to install manually.
# ------------------------------------------------------------------------------

# Aleph One
# Aleph One is the open source continuation of Bungie’s Marathon 2 game engine.
# https://alephone.lhowon.org/






# ------------------------------------------------------------------------------
#  Fun stuff.
# ------------------------------------------------------------------------------

# givegif
# Find and display GIFs from the command line (requires iTerm >= 2.9).
# https://github.com/passy/givegif
brew tap passy/givegif
brew install givegif

# No More Secrets
# The decrypting text effect from the movie "Sneakers".
# https://www.youtube.com/watch?v=F5bAa6gFvLs&t=35
# https://github.com/bartobri/no-more-secrets
brew install no-more-secrets

# ASCIIQuarium
# Aquarium animation in ASCII art
# https://robobunny.com/projects/asciiquarium/html/
brew install asciiquarium

# ------------------------------------------------------------------------------

# Qt
# Cross-platform application and UI framework
# https://www.qt.io/
brew install qt5

# cool-retro-term
# A good looking terminal emulator which mimics the old cathode display...
# https://github.com/Swordfish90/cool-retro-term
git clone --recursive https://github.com/Swordfish90/cool-retro-term.git /tmp/cool-retro-term
export CPPFLAGS="-I/usr/local/opt/qt5/include"
export LDFLAGS="-L/usr/local/opt/qt5/lib"
export PATH="/usr/local/opt/qt5/bin:$PATH"
cd /tmp/cool-retro-term
qmake && make
mkdir cool-retro-term.app/Contents/PlugIns
cp -r qmltermwidget/QMLTermWidget cool-retro-term.app/Contents/PlugIns
cp -r cool-retro-term.app "$HOME/Applications"
