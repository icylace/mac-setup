#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Kakoune
+ - - - - - - - - - - - - - - - - - - - -
'

# Kakoune
# Selection-based modal text editor
# https://kakoune.org/
# https://github.com/mawww/kakoune
brew install kakoune

# plug.kak
# Plugin manager for Kakoune editor.
# https://github.com/andreyorst/plug.kak
# https://github.com/andreyorst/plug.kak#installation
mkdir -p "$HOME/.config/kak/plugins/"
git clone https://github.com/andreyorst/plug.kak.git "$HOME/.config/kak/plugins/plug.kak"
