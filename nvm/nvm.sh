#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Node.js
+ - - - - - - - - - - - - - - - - - - - -
'

# Node Version Manager
# A manager for handling different versions of Node.js.
# https://github.com/creationix/nvm
brew install nvm

# Install Node.js.
nvm install stable

nvm alias default stable
