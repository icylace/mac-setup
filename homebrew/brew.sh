#!/usr/bin/env bash

blue '
-----------------------------------------------
-          Xcode Command Line Tools           -
-----------------------------------------------
'

t 'Checking if Xcode is installed...'

# Check if Xcode is installed correctly.
# http://apple.stackexchange.com/a/219508
if ! ( \
  type xcode-select >&- \
  && xpath=$(xcode-select --print-path) \
  && test -d "$xpath" \
  && test -x "$xpath" \
) ; then
  # Xcode Command Line Tools
  # CLI utilities for Xcode development.
  # https://developer.apple.com/xcode/
  t 'Installing Xcode command line tools...'
  xcode-select --install
  # https://macops.ca/deploying-xcode-the-trick-with-accepting-license-agreements
  # sudo xcodebuild -license accept
fi

blue ''
blue '-----------------------------------------------'
blue '-                  Homebrew                   -'
blue '-----------------------------------------------'
blue ''

# Install Homebrew if we need to.
if ! we_have brew ; then
  # Homebrew
  # Package manager for OS X.
  # http://brew.sh
  t 'Installing homebrew...'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check if there are problems.
brew doctor

# Update Homebrew recipes.
brew update

# Access more recent versions of some programs that come with OS X.
brew tap homebrew/dupes

# # Access PHP-related formulas.
# brew tap homebrew/homebrew-php

t 'Installing formulas...'
brew install $(cat brew.formulas | grep -v \#)

# Use an updated Z shell as the default shell.
# http://zsh.sourceforge.net/
# http://johndjameson.com/blog/updating-your-shell-with-homebrew/
# http://stackoverflow.com/questions/17648621/how-do-i-update-zsh-to-the-latest-version/17649823#17649823
brew install zsh
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s "$(which zsh)"

# ------------------------------------------------------------------------------

# # rbenv
# # A Ruby version manager.
# # http://rbenv.org/
# brew install rbenv

# # Install a newer version of Ruby.
# rbenv install 2.3.0
# rbenv global 2.3.0
# rbenv rehash

# ------------------------------------------------------------------------------

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

# ------------------------------------------------------------------------------

# Configure sift.
sift --color --group --line-number --stats --write-config

# ------------------------------------------------------------------------------

# damn-weather
# Checks the weather in your terminal.
# https://github.com/mrowa44/damn-weather
# gem install --upgrade damn-weather
gem install damn-weather

# ------------------------------------------------------------------------------

# Python 2
# A programming language.
# https://www.python.org/
pyenv install 2.7.11
pyenv global 2.7.11

# eg
# Useful examples at the command line.
# https://github.com/srsudar/eg
pip install --upgrade eg

# Ohmu
# View disk space usage in your terminal.
# https://github.com/paul-nechifor/ohmu
pip install --upgrade ohmu

# # pip-tools
# # A set of command line tools to help you keep your pip-based packages fresh,
# # even when you've pinned them.
# # https://github.com/nvie/pip-tools
# pip install --upgrade pip-tools

# searchcmd
# Search the internet for command line commands from the command line.
# https://github.com/jimmyppi/searchcmd
pip install --upgrade searchcmd

# ------------------------------------------------------------------------------

# cd ~
# yadm clone https://github.com/icylace/dotfiles

# ------------------------------------------------------------------------------

#
# Other formulas.
#

# duti .duti

# # GNU Aspell
# # Spell checker.
# # http://aspell.net/
# aspell

# # Composer
# # Dependency manager for PHP.
# # http://getcomposer.org/
# #
# # https://github.com/composer/composer/pull/3523#issuecomment-66768640
# # https://github.com/composer/composer/issues/3255#issuecomment-60742259
# #
# composer

# # Drush
# # Shell interface for Drupal.
# # https://github.com/drush-ops/drush
# drush

# # FFmpeg
# # Audio and video converter, recorder, and streamer.
# # http://ffmpeg.org/
# ffmpeg

# # id3tool
# # ID3 tag editor.
# # http://nekohako.xware.cx/id3tool/
# id3tool

# # Pipe Viewer
# # Progress monitor for data through a pipeline.
# # http://ivarch.com/programs/pv
# pv

# # spark
# # Data visualizer using sparklines.
# # http://zachholman.com/spark/
# spark

# # terminal-notifier
# # Send Mac OS X User Notifications.
# # https://github.com/alloy/terminal-notifier
# terminal-notifier

# Check if there are problems.
brew doctor

# Make sure we longer have any unnecessary files laying around.
brew cleanup
