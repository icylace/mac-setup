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

source bash.sh
# source duti.sh
# source extras.sh
source general.sh
source git.sh
source grc.sh
# source postgresql.sh
source ranger.sh
# source rust.sh
source sift.sh
source yadm.sh
source zsh.sh

# ------------------------------------------------------------------------------

# How to uninstall Nix:
# https://github.com/NixOS/nix/issues/1402#issuecomment-312496360
