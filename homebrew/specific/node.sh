#!/usr/bin/env bash

blue '
-----------------------------------------------
-                 Node.js                     -
-----------------------------------------------
'

# Node Version Manager
# A manager for handling different versions of Node.js.
# https://github.com/creationix/nvm
brew install nvm

# Install Node.js.
nvm install stable

nvm alias default stable

# deps-ok
# Fast checking of top level dependencies based on version numbers.
# https://www.npmjs.com/package/deps-ok
npm install --global deps-ok

# npm-check-updates
# Finds newer versions of dependencies than what your package.json allows.
# https://www.npmjs.com/package/npm-check-updates
npm install --global npm-check-updates
