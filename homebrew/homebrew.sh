#!/usr/bin/env bash

blue '
-----------------------------------------------
-          Xcode Command Line Tools           -
-----------------------------------------------
'

t 'Checking if Xcode is installed...'

# Check if Xcode is installed correctly.
# http://apple.stackexchange.com/a/219508
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
-----------------------------------------------
-                  Homebrew                   -
-               http://brew.sh/               -
-----------------------------------------------
'

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
brew install $(grep --invert-match \# < brews/*)

# Check if there are problems.
brew doctor

# Make sure we longer have any unnecessary files laying around.
brew cleanup

# ------------------------------------------------------------------------------

# # GNU Aspell
# # Spell checker.
# # http://aspell.net/
# aspell

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

# ------------------------------------------------------------------------------

blue '
-----------------------------------------------
-                Homebrew Cask                -
-             http://caskroom.io/             -
-----------------------------------------------
'

# Check if there are problems.
brew doctor

# Access alternate versions of programs.
# https://github.com/caskroom/homebrew-versions
brew tap caskroom/versions

# Access fonts.
# https://github.com/caskroom/homebrew-fonts
brew tap caskroom/fonts

# Make sure our Homebrew Cask recipes are updated.
brew cask update

t 'Installing casks...'
brew cask install $(grep --invert-match \# < casks/*)

# Check if there are problems.
brew cask doctor

# Make sure we longer have any unnecessary files laying around.
brew cleanup
brew cask cleanup

# ------------------------------------------------------------------------------

source specific/*.sh

# ------------------------------------------------------------------------------

# # Activate the Quick Look plugins.
# qlmanage -r


# Upgrading Casks
# https://github.com/caskroom/homebrew-cask/issues/7884#issuecomment-66114740
# brew cask uninstall --force <token> && brew cask install <token>.

#
# Other casks.
#

# https://github.com/ttscoff/reiki/blob/master/reiki.plugin.bash#L298

# https://gist.github.com/brandonb927/3195465

# # Default Folder X
# # Open and Save dialog box enhancer.
# # http://stclairsoft.com/DefaultFolderX/
# #default-folder-x
# # There is a Cask for it but it needs fixing.  The workaround is to install manually.
# # TODO
# # - verify if this is still true

# lighttable
