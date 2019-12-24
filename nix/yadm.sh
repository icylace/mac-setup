#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  yadm
+ - - - - - - - - - - - - - - - - - - - -
'

# yadm
# Yet Another Dotfiles Manager
# https://yadm.io/
nix-env --install --attr nixpkgs.yadm

if we_have yadm ; then
  cd "$HOME"
  yadm clone https://github.com/icylace/dotfiles
fi
