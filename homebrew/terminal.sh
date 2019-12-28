#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Terminal emulators.
+ - - - - - - - - - - - - - - - - - - - -
'

# Alacritty
# A cross-platform, GPU-accelerated terminal emulator
# https://github.com/jwilm/alacritty
brew cask install alacritty

# iTerm2
# Terminal emulator.
# https://iterm2.com/
brew cask install iterm2-beta
# After installation, follow these steps for shell integration:
# https://www.iterm2.com/documentation-shell-integration.html

# Kitty
# A cross-platform, fast, feature full, GPU based terminal emulator
# https://github.com/kovidgoyal/kitty
brew cask install kitty
