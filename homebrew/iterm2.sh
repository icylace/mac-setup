#!/usr/bin/env bash

# TODO:
# installation steps need updating?

# Access alternate versions of programs.
# https://github.com/Homebrew/homebrew-cask-versions
brew tap homebrew/cask-versions

# ------------------------------------------------------------------------------

blue '
+-------------------------------------------------------------------------------
:  iTerm2
+ - - - - - - - - - - - - - - - - - - - -
'

# iTerm2
# Terminal emulator.
# https://iterm2.com/
brew cask install iterm2-beta

# TODO:
# - add steps for iTerm2 shell integration
#   - https://www.iterm2.com/documentation-shell-integration.html
