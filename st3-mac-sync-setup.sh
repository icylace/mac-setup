#!/usr/bin/env bash

# ------------------------------------------------------------------------------
#  Setup Sublime Text 3 settings sync.
#  Based on:  https://packagecontrol.io/docs/syncing#dropbox-osx
# ------------------------------------------------------------------------------

cd "$HOME/Library/Application Support/Sublime Text 3/Packages"
mkdir "$HOME/My/Dropbox/Sync/Sublime Text packages"
mv User "$HOME/My/Dropbox/Sync/Sublime Text packages"
ln -s "$HOME/My/Dropbox/Sync/Sublime Text packages/User"
