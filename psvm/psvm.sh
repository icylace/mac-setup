#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  PureScript
+ - - - - - - - - - - - - - - - - - - - -
'

# Purescript Version Manager
# A manager for handling different versions of PureScript.
# https://github.com/ThomasCrevoisier/psvm-js
yarn global add psvm

# ------------------------------------------------------------------------------

# PureScript
# A strongly-typed functional programming language that compiles to JavaScript
# http://www.purescript.org/
# psvm install-latest
psvm install v0.12.1

psvm use v0.12.1
