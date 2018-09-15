#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  PostgreSQL
+ - - - - - - - - - - - - - - - - - - - -
'

# PostgreSQL
# The world's most advanced open source relational database
# https://www.postgresql.org/
nix-env --install --attr nixpkgs.postgresql100
