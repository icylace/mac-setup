#!/usr/bin/env bash

blue '
-----------------------------------------------
-                    Ruby                     -
-----------------------------------------------
'

# rbenv
# A Ruby version manager.
# http://rbenv.org/
brew install rbenv

# ruby-build
# An rbenv plugin that allows installing different versions of Ruby.
# https://github.com/sstephenson/ruby-build
brew install ruby-build

# Install a newer version of Ruby.
rbenv install 2.4.2
rbenv global 2.4.2
rbenv rehash
