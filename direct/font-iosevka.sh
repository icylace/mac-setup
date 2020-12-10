#!/usr/bin/env bash

if [ ! -d "$HOME/tmp/iosevka" ] ; then
  mkdir -pv "$HOME/tmp/iosevka"

  # ttfautohint
  # Auto-hinter for TrueType fonts
  # https://www.freetype.org/ttfautohint/
  brew install ttfautohint

  # otfcc
  # Parses & writes SFNT structures.
  # https://github.com/caryll/otfcc
  brew tap caryll/tap && brew install otfcc-mac64

  # Iosevka
  # Slender typeface for code, from code.
  # https://typeof.net/Iosevka/
  # https://github.com/be5invis/Iosevka
  git clone https://github.com/be5invis/Iosevka "$HOME/tmp/iosevka"
fi

# Creates a custom variant of the Iosevka font.
make_custom_iosevka_font() {
  # https://stackoverflow.com/a/4990185
  cat <<FONT > "$HOME/tmp/iosevka/private-build-plans.toml"
[buildPlans.iosevka-icylace]
family = "Iosevka icylace"
spacing = "normal"
serifs = "sans"

[buildPlans.iosevka-icylace.variants.design]
capital-d = "more-rounded"
capital-y = "curly"
f = "flat-hook-tailed"
g = "opendoublestorey"
h = "tailed"
i = "hooky"
l = "zshaped"
m = "shortleg-tailed"
n = "tailed"
q = "tailed"
r = "serifed"
zero = "dotted"
one = "base"
asterisk = "low"
paren = "large-contour"
number-sign = "slanted"
dollar = "throughcap"
percent = "dots"

  [buildPlans.iosevka-icylace.ligations]
  inherits = "dlig"
  enables = ["colon-greater-as-colon-arrow"]

[buildPlans.iosevka-icylace.widths.normal]
shape = 576
menu = 5
css = "normal"
FONT

  local tmp=$(pwd)
  cd "$HOME/tmp/iosevka"
  npm install
  npm run build -- contents::iosevka-icylace
  cd "$tmp"
  \cp -fR "$HOME/tmp/iosevka/dist/iosevka-icylace/ttf/"*.ttf "$HOME/Library/Fonts"
}
