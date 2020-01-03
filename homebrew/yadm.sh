#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  yadm
+ - - - - - - - - - - - - - - - - - - - -
'

# yadm
# Yet Another Dotfiles Manager
# https://yadm.io/
brew install yadm

# My dotfiles.
yadm clone https://github.com/icylace/dotfiles "$HOME"
