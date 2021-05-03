#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  npm
+ - - - - - - - - - - - - - - - - - - - -
'

# ESLint
# Find and fix problems in your JavaScript code.
# https://eslint.org/
# https://github.com/eslint/eslint
npm install --global eslint

# np
# A better `npm publish`
# https://github.com/sindresorhus/np
# https://www.npmjs.com/package/np
# https://github.com/sindresorhus/np#config
npm install --global np
# To sign Git tags, do this on the project level.
# # https://github.com/sindresorhus/np#signed-git-tag
# npm config set sign-git-tag true

# npm-check-updates
# Finds newer versions of dependencies than what your package.json allows.
# https://github.com/raineorshine/npm-check-updates
# https://www.npmjs.com/package/npm-check-updates
npm install --global npm-check-updates
