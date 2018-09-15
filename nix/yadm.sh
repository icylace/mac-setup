#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  yadm
+ - - - - - - - - - - - - - - - - - - - -
'

# yadm
# Yet Another Dotfiles Manager
# https://thelocehiliosan.github.io/yadm/
# https://github.com/TheLocehiliosan/yadm
nix-env --install --attr nixpkgs.yadm

if we_have yadm ; then
  cd "$HOME"
  yadm clone https://github.com/icylace/dotfiles
fi
