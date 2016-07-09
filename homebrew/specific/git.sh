#!/usr/bin/env bash

blue '
-----------------------------------------------
-                     Git                     -
-----------------------------------------------
'

# http://blog.mixu.net/2012/04/06/git-tips-and-tricks/
git config --global color.ui true
git config --global push.default current
# git config branch.autosetuprebase always
# git difftool -t <tool>
# git mergetool -t <tool>


# ------------------------------------------------------------------------------
#  Git utilities.
# ------------------------------------------------------------------------------

# Git
# A distributed version control system.
# http://git-scm.com/
brew install git

# git-cal
# GitHub-like contributions calendar on terminal.
# https://github.com/k4rthik/git-cal
brew install git-cal

# Git Extras
# Extra commands for Git.
# https://github.com/tj/git-extras
brew install git-extras

# Git STree
# Git subtree helper command.
# http://tdd.github.io/git-stree/
brew install git-stree

# hub
# Wrapper for Git that makes you better at GitHub.
# https://hub.github.com/
brew install hub

# # Legit
# # Extra commands for Git.
# # http://git-legit.org/
# brew install legit

# Git Radar
# A heads-up display for Git.
# https://github.com/michaeldfallen/git-radar
brew install michaeldfallen/formula/git-radar

# Tig
# Text-mode interface for Git.
# http://jonas.nitro.dk/tig/
brew install tig


# ------------------------------------------------------------------------------
#  Git-related utilities.
# ------------------------------------------------------------------------------

# # git-smart
# # Extra commands for Git.
# # https://github.com/geelen/git-smart
# gem install git-smart
