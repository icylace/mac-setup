#!/usr/bin/env bash

# givegif
# Find and display GIFs from the command line (requires iTerm >= 2.9).
# https://github.com/passy/givegif
brew tap passy/givegif
brew install givegif

# Graphviz
# Graph visualizer.
# http://graphviz.org/
brew install graphviz

# Python
# A programming language.
# https://www.python.org/
brew install python3

# tup
# File-based build system.
# http://gittup.org/tup/
brew tap homebrew/fuse
brew install tup
brew cask install osxfuse

# ------------------------------------------------------------------------------
#  Fun stuff.
# ------------------------------------------------------------------------------

# No More Secrets
# The decrypting text effect from the movie "Sneakers".
# https://www.youtube.com/watch?v=F5bAa6gFvLs&t=35
# https://github.com/bartobri/no-more-secrets
brew install no-more-secrets


# ------------------------------------------------------------------------------
#  `brew cask` stuff
# ------------------------------------------------------------------------------

# BootChamp
# Quickly reboots into the Windows.
# http://kainjow.com/
brew cask install bootchamp

# Integrity
# Link checker for websites.
# http://peacockmedia.co.uk/integrity/
brew cask install integrity

# Neat
# Document scanner and manager.
# http://www.neat.com/
brew cask install neat

# Skype
# VoIP and video conferencing client.
# http://www.skype.com/en/
brew cask install skype

# The Hit List
# To-do list manager.
# http://www.karelia.com/products/the-hit-list/mac.html
brew cask install the-hit-list

# Transmission
# BitTorrent client.
# https://www.transmissionbt.com/
brew cask install transmission

# Vagrant
# Virtual development environment manager.
# https://www.vagrantup.com/
brew cask install vagrant

# VirtualBox
# Virtual environment manager.
# https://www.virtualbox.org/
brew cask install virtualbox


# ------------------------------------------------------------------------------
#  Command-line Utilities.
# ------------------------------------------------------------------------------

# ngrok
# Introspected tunnels to localhost.
# https://ngrok.com/
brew cask install ngrok




# brew cask install $(cat brews/casks.brew | grep -v \#)









# https://macitbetter.com/

