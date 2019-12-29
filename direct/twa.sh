#!/usr/bin/env bash

if [ ! -d "$HOME/cli" ] ; then
  mkdir -pv "$HOME/cli/twa"
fi

# twa
# A tiny web auditor with strong opinions.
# https://github.com/trailofbits/twa
git clone https://github.com/trailofbits/twa.git "$HOME/cli/twa"
