#!/usr/bin/env bash

blue '
-----------------------------------------------
-                    Ruby                     -
-----------------------------------------------
'

# ruby-build
# An rbenv plugin that allows installing different versions of Ruby.
# https://github.com/sstephenson/ruby-build
brew install ruby-build

# # rbenv
# # A Ruby version manager.
# # http://rbenv.org/
# brew install rbenv

# # Install a newer version of Ruby.
# rbenv install 2.3.0
# rbenv global 2.3.0
# rbenv rehash

# ------------------------------------------------------------------------------

# damn-weather
# Checks the weather in your terminal.
# https://github.com/mrowa44/damn-weather
# gem install --upgrade damn-weather
gem install damn-weather
