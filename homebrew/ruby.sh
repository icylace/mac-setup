#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Ruby
+ - - - - - - - - - - - - - - - - - - - -
'

# rbenv
# A Ruby version manager.
# http://rbenv.org/
brew install rbenv

# ruby-build
# An rbenv plugin that allows installing different versions of Ruby.
# https://github.com/sstephenson/ruby-build
brew install ruby-build

# Ruby
# Powerful, clean, object-oriented scripting language
# https://www.ruby-lang.org/
rbenv install 2.5.3
rbenv global 2.5.3
rbenv rehash
