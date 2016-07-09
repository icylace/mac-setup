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

# Bower
# Package manager for the web projects.
# http://bower.io/
npm install --global bower

# caniuse-cmd
# Use http://caniuse.com/ from the command line.
# https://github.com/sgentle/caniuse-cmd
npm install --global caniuse-cmd

# deps-ok
# Fast checking of top level dependencies based on version numbers.
# https://www.npmjs.com/package/deps-ok
npm install --global deps-ok

# # Gulp
# # The streaming build system.
# # http://gulpjs.com/
# npm install --global gulp

# npm-check-updates
# Finds newer versions of dependencies than what your package.json allows.
# https://www.npmjs.com/package/npm-check-updates
npm install --global npm-check-updates

# # blacklisted-gulp
# # Searches for blacklisted Gulp plugins in your project.
# # https://github.com/ernestoalejo/blacklisted-gulp
# # https://www.npmjs.com/package/blacklisted-gulp
# npm install --global blacklisted-gulp

# # wat
# # Instant, central, community-built docs.
# # https://github.com/dthree/wat
# npm install -g wat
