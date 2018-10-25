#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Fonts.
+ - - - - - - - - - - - - - - - - - - - -
'

# FontBase
# Font management. Perfected.
# https://fontba.se/
brew cask install fontbase

# ------------------------------------------------------------------------------

# homebrew-cask-fonts
# 🖋 Casks of Ｆ🅾𝓝𝐓𝚂
# https://github.com/Homebrew/homebrew-cask-fonts
brew tap homebrew/cask-fonts

# 3270font: A font for the nostalgic
# A 3270 font in a modern format
# https://github.com/rbanffy/3270font
brew cask install font-3270

# Fira Code
# Monospaced font with programming ligatures
# https://github.com/tonsky/FiraCode
brew cask install font-fira-code

# Hack
# A typeface designed for source code
# https://sourcefoundry.org/hack/
brew cask install font-hack

# Hasklig
# Hasklig - a code font with monospaced ligatures
# https://github.com/i-tu/Hasklig
brew cask install font-hasklig

# Input
# Fonts for code from DJR & Font Bureau
# http://input.fontbureau.com/
brew cask install font-input

# M+
# https://mplus-fonts.osdn.jp/
brew cask install font-m-plus
# TODO:
# - confirm that this installs correctly

# Source Code Pro
# https://adobe-fonts.github.io/source-code-pro/
brew cask install font-source-code-pro

# ------------------------------------------------------------------------------

# ttfautohint
# An automatic hinter for TrueType fonts
# https://www.freetype.org/ttfautohint/
nix-env --install --attr nixpkgs.ttfautohint

# otfcc
# Optimized OpenType builder and inspector
# https://github.com/caryll/otfcc
nix-env --install --attr nixpkgs.otfcc

# ------------------------------------------------------------------------------

# Iosevka
# Slender typeface for code, from code.
# https://be5invis.github.io/Iosevka/
# https://github.com/be5invis/Iosevka
# brew cask install font-iosevka
git clone https://github.com/be5invis/Iosevka /tmp/iosevka
cd /tmp/iosevka
npm install
# TODO: create "private-build-plans.toml"
npm run build -- contents:iosevka-icylace
cp -r /tmp/iosevka/dist/iosevka-icylace/ttf/*.ttf "$HOME/Library/Fonts"

# ------------------------------------------------------------------------------
