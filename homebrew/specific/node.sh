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

# Yarn
# A dependency manager for Node.js projects.
# https://yarnpkg.com/
brew install yarn

# # vue-cli
# # Simple CLI for scaffolding Vue.js projects.
# # https://github.com/vuejs/vue-cli
# yarn global add vue-cli

# # deps-ok
# # Fast checking of top level dependencies based on version numbers.
# # https://www.npmjs.com/package/deps-ok
# yarn global add deps-ok

# # npm-check-updates
# # Finds newer versions of dependencies than what your package.json allows.
# # https://www.npmjs.com/package/npm-check-updates
# yarn global add npm-check-updates
