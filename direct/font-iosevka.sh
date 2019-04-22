#!/usr/bin/env bash

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

# TODO:
# - i might need to update my Iosevka setup

# Iosevka
# Slender typeface for code, from code.
# https://typeof.net/Iosevka/
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
