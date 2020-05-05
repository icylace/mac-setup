#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  npm
+ - - - - - - - - - - - - - - - - - - - -
'

# # deps-ok
# # Fast checking of top level dependencies based on version numbers.
# # https://www.npmjs.com/package/deps-ok
# npm install --global deps-ok

# np
# A better `npm publish`
# https://github.com/sindresorhus/np
# https://www.npmjs.com/package/np
# https://github.com/sindresorhus/np#config
npm install --global np
# TODO:
# Do this on the project level.
# # https://github.com/sindresorhus/np#signed-git-tag
# npm config set sign-git-tag true

# # npm-check-updates
# # Finds newer versions of dependencies than what your package.json allows.
# # https://www.npmjs.com/package/npm-check-updates
# npm install --global npm-check-updates
