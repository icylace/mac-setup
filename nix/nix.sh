#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Nix
+ - - - - - - - - - - - - - - - - - - - -
'

# Nix
# The Purely Functional Package Manager
# https://nixos.org/nix/
sh <(curl https://nixos.org/nix/install)

source general.sh

# How to uninstall Nix:
# https://github.com/NixOS/nix/issues/1402#issuecomment-312496360
