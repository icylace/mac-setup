#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  ranger
+ - - - - - - - - - - - - - - - - - - - -
'

# ranger
# File browser
# https://ranger.github.io/
brew install ranger

# colorschemes
# Repository that collects ranger colorschemes implemented by the community
# https://github.com/ranger/colorschemes
git clone https://github.com/ranger/colorschemes.git /tmp/ranger-colorschemes
mkdir -pv "$HOME/.config/ranger/colorschemes"
cp -r /tmp/ranger-colorschemes/*.py "$HOME/.config/ranger/colorschemes"
