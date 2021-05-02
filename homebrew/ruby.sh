#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Ruby
+ - - - - - - - - - - - - - - - - - - - -
'

# rbenv
# Ruby version manager
# http://rbenv.org/
brew install rbenv

# Ruby
# Powerful, clean, object-oriented scripting language
# https://www.ruby-lang.org/
rbenv install 2.7.3
rbenv global 2.7.3
rbenv rehash
