#!/usr/bin/env bash

# Check for Homebrew and install if we don't have it.
if ! we_have brew ; then
  e 'Installing homebrew...'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check if there are problems.
brew doctor

# Update Homebrew recipes.
brew update

# Access game formulas.
brew tap homebrew/homebrew-games

formulas=(
  brogue
  gnu-chess
  mame
  wesnoth

  # Homebrew Cask
  # Manages the administration of Mac applications distributed as binaries.
  # http://caskroom.io/
  caskroom/cask/brew-cask
)

e 'Installing Homebrew formulas...'
brew install "${formulas[@]}"

cask_formulas=(
  battle-net
  boxer
  openemu-experimental
  steam
)

brew cask install "${cask_formulas[@]}"


# ------------------------------------------------------------------------------
#  Apps to install manually via the Mac App Store.
# ------------------------------------------------------------------------------

# Joystick Show
# http://chibatacreations.com/app/joystickshow/


# ------------------------------------------------------------------------------
#  Games to install manually.
# ------------------------------------------------------------------------------

# alephone
