#!/usr/bin/env bash

blue '
-----------------------------------------------
-                    yadm                     -
-----------------------------------------------
'

# yadm
# Yet Another Dotfiles Manager
# https://github.com/TheLocehiliosan/yadm
brew install yadm

if we_have yadm ; then
  cd "$HOME"
  yadm clone https://github.com/icylace/dotfiles
fi
