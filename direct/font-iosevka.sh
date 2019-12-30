#!/usr/bin/env bash

# ------------------------------------------------------------------------------
#  Create a custom variant of the Iosevka font.
# ------------------------------------------------------------------------------

# ttfautohint
# Auto-hinter for TrueType fonts
# https://www.freetype.org/ttfautohint/
brew install ttfautohint

# otfcc
# Parses & writes SFNT structures.
# https://github.com/caryll/otfcc
brew tap caryll/tap && brew install otfcc-mac64

mkdir -pv "$HOME/tmp/iosevka"

# Iosevka
# Slender typeface for code, from code.
# https://typeof.net/Iosevka/
# https://github.com/be5invis/Iosevka
git clone https://github.com/be5invis/Iosevka "$HOME/tmp/iosevka"

make_custom_iosevka_font() {
  # https://stackoverflow.com/a/4990185
  cat <<FONT >> "$HOME/tmp/iosevka/private-build-plans.toml"
[buildPlans.iosevka-icylace]
family = "Iosevka icylace"
design = [
  "sans",
  "extended",
  "ligset-coq",
  "leading-1500",
  "v-a-doublestorey",
  "v-f-tailed",
  "v-g-opendoublestorey",
  "v-i-hooky",
  "v-j-serifed",
  "v-l-zshaped",
  "v-m-shortleg",
  "v-q-taily",
  "v-t-standard",
  "v-y-straight",
  "v-zero-dotted",
  "v-one-serifed",
  "v-three-twoarks",
  "v-seven-normal",
  "v-tilde-low",
  "v-asterisk-low",
  "v-paragraph-high",
  "v-caret-high",
  "v-underscore-high",
  "v-percent-dots",
  "v-at-long",
  "v-eszet-sulzbacher",
  "v-brace-curly",
  "v-dollar-throughcap",
  "v-numbersign-slanted"
]
FONT

  local tmp=$(pwd)
  cd "$HOME/tmp/iosevka"
  npm install
  npm run build -- contents::iosevka-icylace
  cd "$tmp"
  cp -r "$HOME/tmp/iosevka/dist/iosevka-icylace/ttf/"*.ttf "$HOME/Library/Fonts"
}

make_custom_iosevka_font
