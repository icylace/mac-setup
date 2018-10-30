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
  t 'Installing homebrew...'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Access more recent versions of some programs that come with OS X.
brew tap homebrew/dupes

# # Access PHP-related formulas.
# brew tap homebrew/homebrew-php

# Make sure our Homebrew formulas are updated.
brew update

t 'Installing formulas...'
source brews.sh

# ------------------------------------------------------------------------------

# blue '
# +-------------------------------------------------------------------------------
# :  Homebrew Cask
# :  https://brew.sh/
# :  https://github.com/Homebrew/homebrew-cask
# + - - - - - - - - - - - - - - - - - - - -
# '

# # Access alternate versions of programs.
# # https://github.com/Homebrew/homebrew-cask-versions
# brew tap homebrew/cask-versions

# # Make sure our Homebrew Cask recipes are updated.
# brew update

# t 'Installing casks...'
# source casks/*.sh

# ------------------------------------------------------------------------------

# Check if there are problems.
brew doctor

# Make sure we longer have any unnecessary files laying around.
brew cleanup
brew cask cleanup

# ------------------------------------------------------------------------------

source specific/*.sh
source specific/vscode/vscode.sh

# ------------------------------------------------------------------------------



# # Activate the Quick Look plugins.
# qlmanage -r


# Upgrading Casks
# https://github.com/caskroom/homebrew-cask/issues/7884#issuecomment-66114740
# brew cask uninstall --force <token> && brew cask install <token>.
