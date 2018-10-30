#!/usr/bin/env bash

# bat
# A cat(1) clone with wings.
# https://github.com/sharkdp/bat
brew install bat

# catimg
# Prints images in the terminal by using Unicode characters.
# https://github.com/posva/catimg
brew install catimg

# hyperfine
# A command-line benchmarking tool
# https://github.com/sharkdp/hyperfine
brew install hyperfine

# spark
# Sparklines for the shell
# https://zachholman.com/spark/
brew install spark

# # terminal-notifier
# # Send macOS User Notifications from the command-line
# # https://github.com/julienXX/terminal-notifier
# brew install terminal-notifier

# ------------------------------------------------------------------------------
#  Extensions to Homebrew
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
#  Updated versions of programs that come with macOS.
# ------------------------------------------------------------------------------

# less
# A terminal pager.
# http://greenwoodsoftware.com/less/
nix-env --install --attr nixpkgs.less

# GNU Core Utilities
# Basic file, shell, and text manipulation utilities.
# https://www.gnu.org/software/coreutils/coreutils.html
nix-env --install --attr nixpkgs.coreutils-prefixed

# # GNU Grep
# # Searches input files for text matching a specified pattern.
# # https://www.gnu.org/software/grep/
# nix-env --install --attr nixpkgs.gnugrep

# ------------------------------------------------------------------------------
#  Utilities specific to macOS.
# ------------------------------------------------------------------------------

# Archey
# Displays basic system information.
# https://obihann.github.io/archey-osx/
brew install archey

# trash
# Moves files and folders to the OS X trash.
# https://hasseg.org/trash/
brew install trash
