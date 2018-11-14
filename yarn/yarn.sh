#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Yarn
+ - - - - - - - - - - - - - - - - - - - -
'

# Yarn
# A dependency manager for Node.js projects.
# https://yarnpkg.com/
brew install yarn --without-node

source purescript.sh

# # simple-autoreload-server
# # A simple Web server on Node.js with autoreload/livereload feature.
# # https://github.com/cytb/simple-autoreload-server
# yarn global add simple-autoreload-server

# # deps-ok
# # Fast checking of top level dependencies based on version numbers.
# # https://www.npmjs.com/package/deps-ok
# yarn global add deps-ok

# # npm-check-updates
# # Finds newer versions of dependencies than what your package.json allows.
# # https://www.npmjs.com/package/npm-check-updates
# yarn global add npm-check-updates
