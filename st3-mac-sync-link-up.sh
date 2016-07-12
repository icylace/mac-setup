#!/usr/bin/env bash

# ------------------------------------------------------------------------------
#  Using shared Sublime Text 3 settings on other machines.
#  Based on:  https://packagecontrol.io/docs/syncing#dropbox-osx
# ------------------------------------------------------------------------------

cd "$HOME/Library/Application Support/Sublime Text 3/Packages"
rm -r User
ln -s "$HOME/My/Dropbox/Sync/Sublime Text packages/User"
