#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  sift
+ - - - - - - - - - - - - - - - - - - - -
'

# sift
# A fast and powerful open source alternative to grep.
# https://sift-tool.org/
nix-env --install --attr nixpkgs.sift

# Configure sift.
sift --color --column --ignore-case --group --line-number --no-zip --stats --write-config
