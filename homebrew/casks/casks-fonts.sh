#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Fonts.
+ - - - - - - - - - - - - - - - - - - - -
'

# Caskroom-fonts
# Caskroom-fonts is a Homebrew Tap which allows you to use the same friendly
# Homebrew-style CLI workflow for the administration of binary font files
# on your Mac.
# https://github.com/caskroom/homebrew-fonts
brew tap caskroom/fonts

# Fira Code
# Monospaced font with programming ligatures
# https://github.com/tonsky/FiraCode
brew cask install font-fira-code

# Input
# Fonts for code from DJR & Font Bureau
# http://input.fontbureau.com/
brew cask install font-input

# M+
# http://mplus-fonts.sourceforge.jp/mplus-outline-fonts/design/index-en.html
brew cask install font-m-plus
# TODO:
# - confirm that this installs correctly

# Source Code Pro
# http://adobe-fonts.github.io/source-code-pro/
brew cask install font-source-code-pro
