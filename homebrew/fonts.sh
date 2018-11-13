#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Fonts.
+ - - - - - - - - - - - - - - - - - - - -
'

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

# TODO:
# font-inconsolata-g-for-powerline

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
#  Create a custom variant of the Iosevka font.
# ------------------------------------------------------------------------------

# ttfautohint
# An automatic hinter for TrueType fonts
# https://www.freetype.org/ttfautohint/
nix-env --install --attr nixpkgs.ttfautohint

# otfcc
# Optimized OpenType builder and inspector
# https://github.com/caryll/otfcc
nix-env --install --attr nixpkgs.otfcc

# Iosevka
# Slender typeface for code, from code.
# https://be5invis.github.io/Iosevka/
# https://github.com/be5invis/Iosevka
git clone https://github.com/be5invis/Iosevka /tmp/iosevka
cd /tmp/iosevka

# https://stackoverflow.com/a/4990185
cat <<EOF >> "private-build-plans.toml"
[buildPlans.iosevka-icylace]
family = "Iosevka icylace"
design = [
  "sans",
  "expanded",
  "ligset-haskell",
  "leading-1500",
  "v-a-doublestorey",
  "v-f-tailed",
  "v-g-opendoublestorey",
  "v-i-hooky",
  "v-l-zshaped",
  "v-m-shortleg",
  "v-q-taily",
  "v-t-standard",
  "v-y-straight",
  "v-zero-dotted",
  "v-one-serifed",
  "v-three-twoarks",
  "v-tilde-low",
  "v-asterisk-low",
  "v-paragraph-high",
  "v-caret-high",
  "v-underscore-high",
  "v-at-long",
  "v-eszet-sulzbacher",
  "v-brace-curly",
  "v-dollar-throughcap",
  "v-numbersign-slanted"
]
EOF

npm install
npm run build -- contents:iosevka-icylace

cp -r /tmp/iosevka/dist/iosevka-icylace/ttf/*.ttf "$HOME/Library/Fonts"
