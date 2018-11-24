#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  PureScript
+ - - - - - - - - - - - - - - - - - - - -
'

# Psc-Package
# https://psc-package.readthedocs.io/en/latest/
# A package manager for PureScript based on package sets
nix-env --install --attr nixpkgs.psc-package
