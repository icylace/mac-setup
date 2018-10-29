#!/usr/bin/env bash

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
  # https://caskroom.github.io/
  caskroom/cask/brew-cask
)

t 'Installing Homebrew formulas...'
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
