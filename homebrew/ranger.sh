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
mkdir -pv "$HOME/tmp/ranger-colorschemes"
mkdir -pv "$HOME/.config/ranger/colorschemes"
git clone https://github.com/ranger/colorschemes.git "$HOME/tmp/ranger-colorschemes"
cp -r "$HOME/tmp/ranger-colorschemes/"*.py "$HOME/.config/ranger/colorschemes"
