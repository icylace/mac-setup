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
  # https://gist.github.com/brysgo/9007731#gistcomment-2735003
  t 'Installing Xcode command line tools...'
  xcode-select --install > /dev/null 2>&1
  if [ 0 == $? ] ; then
    sleep 1
    osascript <<CODE
tell application "System Events"
  tell process "Install Command Line Developer Tools"
    keystroke return
    click button "Agree" of window "License Agreement"
  end tell
end tell
CODE
  else
    t 'Command Line Developer Tools are already installed!'
  fi

  # https://macops.ca/deploying-xcode-the-trick-with-accepting-license-agreements
  # sudo xcodebuild -license accept
fi

blue '
+-------------------------------------------------------------------------------
:  Homebrew
+ - - - - - - - - - - - - - - - - - - - -
'

# Install Homebrew if we need to.
if ! we_have brew ; then
  # https://github.com/Homebrew/brew/blob/master/docs/Analytics.md#opting-out
  # https://news.ycombinator.com/item?id=21648615
  export HOMEBREW_NO_ANALYTICS=1

  # Homebrew
  # Package manager for OS X.
  # https://brew.sh/
  put 'Installing homebrew...'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  # https://github.com/Homebrew/brew/blob/master/docs/Analytics.md#opting-out
  brew analytics off
fi

# ------------------------------------------------------------------------------
#  Extensions to Homebrew.
# ------------------------------------------------------------------------------

# brew-graph
# Creates a simple dependency graph of Homebrew formulae.
# https://github.com/martido/brew-graph
brew tap martido/homebrew-graph

# homebrew-rmtree
# Remove a formula and its unused dependencies
# https://github.com/beeftornado/homebrew-rmtree
brew tap beeftornado/rmtree

# homebrew-cask-drivers
# Casks of drivers
# https://github.com/Homebrew/homebrew-cask-drivers
brew tap homebrew/cask-drivers

# ------------------------------------------------------------------------------

# Make sure our Homebrew formulas are updated.
brew update

put 'Installing formulas...'
source general.sh
source bash.sh
source docker.sh
source duti.sh
source extras.sh
source fonts.sh
source fun.sh
source git.sh
source grc.sh
source haskell.sh
source kakoune.sh
source keyboard.sh
source macos-apps.sh
source php.sh
source postgresql.sh
source python.sh
source ranger.sh
source ruby.sh
source sublime-text.sh
source terminal.sh
source yadm.sh
source zsh.sh

# Check if there are any problems.
brew doctor

# Make sure we longer have any unnecessary files laying around.
brew cleanup

# ------------------------------------------------------------------------------

# Upgrading Casks
# https://github.com/caskroom/homebrew-cask/issues/7884#issuecomment-66114740
# brew cask uninstall --force <token> && brew cask install <token>.
