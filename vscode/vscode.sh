#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code
+ - - - - - - - - - - - - - - - - - - - -
'

# Visual Studio Code
# Code editing. Redefined.
# https://code.visualstudio.com/
brew cask install visual-studio-code
# Additional steps to install the VS Code command line tool:
# https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line

source extensions/*.sh
