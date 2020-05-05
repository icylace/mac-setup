#!/usr/bin/env bash

if [ ! -d "$HOME/My/CLI/twa" ] ; then
  mkdir -pv "$HOME/My/CLI/twa"

  # twa
  # A tiny web auditor with strong opinions.
  # https://trailofbits.github.io/twa/
  # https://github.com/trailofbits/twa
  git clone https://github.com/trailofbits/twa.git "$HOME/My/CLI/twa"
fi
