#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Xcode Command Line Tools
+ - - - - - - - - - - - - - - - - - - - -
'

t 'Checking if Xcode is installed...'

# Check if Xcode is installed correctly.
# https://apple.stackexchange.com/a/219508
if ! {                                  \
  type xcode-select >&- &&              \
  xpath=$(xcode-select --print-path) && \
  [ -d "$xpath" ] &&                    \
  [ -x "$xpath" ] ;                     \
} ; then
  # Xcode Command Line Tools
  # CLI utilities for Xcode development.
  # https://developer.apple.com/xcode/
  t 'Installing Xcode command line tools...'
  xcode-select --install
  # https://macops.ca/deploying-xcode-the-trick-with-accepting-license-agreements
  # sudo xcodebuild -license accept
fi

blue '
+-------------------------------------------------------------------------------
:  Homebrew
:  https://brew.sh/
+ - - - - - - - - - - - - - - - - - - - -
'

# Install Homebrew if we need to.
if ! we_have brew ; then
  # Homebrew
  # Package manager for OS X.
  # https://brew.sh/
  put 'Installing homebrew...'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# ------------------------------------------------------------------------------
#  Extensions to Homebrew.
# ------------------------------------------------------------------------------

# brew-graph
# Creates a simple dependency graph of Homebrew formulae.
# https://github.com/martido/brew-graph
brew install martido/brew-graph/brew-graph

# homebrew-rmtree
# Remove a formula and its unused dependencies
# https://github.com/beeftornado/homebrew-rmtree
brew tap beeftornado/rmtree

# ------------------------------------------------------------------------------

# # Access more recent versions of some programs that come with OS X.
# brew tap homebrew/dupes

# Make sure our Homebrew formulas are updated.
brew update

put 'Installing formulas...'
source brews.sh
source docker.sh
# source extras.sh
source fonts.sh
# source fun.sh
source general.sh
source git.sh
source iterm2.sh
source kakoune.sh
source mas.sh
source php.sh
source python.sh
source ruby.sh
source sublime-text.sh

# Check if there are any problems.
brew doctor

# Make sure we longer have any unnecessary files laying around.
brew cleanup
brew cask cleanup

# ------------------------------------------------------------------------------

# Upgrading Casks
# https://github.com/caskroom/homebrew-cask/issues/7884#issuecomment-66114740
# brew cask uninstall --force <token> && brew cask install <token>.
