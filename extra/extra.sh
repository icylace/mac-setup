# Carthage
# A simple, decentralized dependency manager for Cocoa.
# https://github.com/Carthage/Carthage
brew install carthage

# Graphviz
# Graph visualizer.
# http://graphviz.org/
brew install graphviz

# jq
# JSON processor.
# http://stedolan.github.io/jq/
brew install jq

# Python
# A programming language.
# https://www.python.org/
brew install python3

# tup
# File-based build system.
# http://gittup.org/tup/
brew tap homebrew/fuse && brew install tup
brew cask install osxfuse

# ----

# `brew cask` stuff

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


# ------------------------------------------------------------------------------
#  Quick Look plugins.
# ------------------------------------------------------------------------------

# # BetterZip Quick Look Generator
# # Previews archives.
# # http://macitbetter.com/BetterZip-Quick-Look-Generator/
# brew cask install betterzipql

# # Invisor QuickLook Plug-In
# # Previews video and audio with technical details.
# # http://pozdeev.com/invisor/
# brew cask install invisorql

# # QLColorCode
# # Previews source code files with syntax highlighting.
# # https://code.google.com/p/qlcolorcode/
# brew cask install qlcolorcode

# # qlImageSize
# # Displays the dimensions of an image and its file size in the title bar.  It also previews some additional image formats.
# # https://github.com/Nyx0uf/qlImageSize
# brew cask install qlimagesize

# # QLMarkdown
# # Previews Markdown files.
# # https://github.com/toland/qlmarkdown
# brew cask install qlmarkdown

# # QuicklookStephen
# # Previews plain text files without a file extension.
# # https://github.com/whomwah/qlstephen
# brew cask install qlstephen

# # A QuickLook Plugin for CSV Files
# # Previews CSV files.
# # https://github.com/p2/quicklook-csv
# brew cask install quicklook-csv

# # quick look JSON
# # Previews JSON files.
# # http://sagtau.com/quicklookjson
# brew cask install quicklook-json

# # Suspicious Package
# # Previews the contents of a standard Apple installer package.
# # http://www.mothersruin.com/software/SuspiciousPackage/
# brew cask install suspicious-package



# brew cask install $(cat brews/casks.brew | grep -v \#)
