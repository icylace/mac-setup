#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  ranger
+ - - - - - - - - - - - - - - - - - - - -
'

# ranger
# A console file manager.
# https://ranger.github.io/
nix-env --install --attr nixpkgs.ranger

# colorschemes
# Repository that collects ranger colorschemes implemented by the community
# https://github.com/ranger/colorschemes
git clone https://github.com/ranger/colorschemes.git /tmp/ranger-colorschemes
mkdir -v "$HOME/.config/ranger/colorschemes"
cp -r /tmp/ranger-colorschemes/*.py "$HOME/.config/ranger/colorschemes"
