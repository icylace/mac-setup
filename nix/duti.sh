#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  duti
+ - - - - - - - - - - - - - - - - - - - -
'

# duti
# Sets default applications for document types and URL schemes.
# http://duti.org/
nix-env --install --attr nixpkgs.duti

duti duti.settings
