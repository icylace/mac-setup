#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Node.js
+ - - - - - - - - - - - - - - - - - - - -
'

# Node Version Manager
# A manager for handling different versions of Node.js.
# https://github.com/creationix/nvm
brew install nvm
#
# Installation notes:
#
# Please note that upstream has asked us to make explicit managing
# nvm via Homebrew is unsupported by them and you should check any
# problems against the standard nvm install method prior to reporting.
#
# You should create NVM's working directory if it doesn't exist:
#
#   mkdir ~/.nvm
#
# Add the following to ~/.zshrc or your desired shell
# configuration file:
#
#   export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#
# You can set $NVM_DIR to any location, but leaving it unchanged from
# /usr/local/opt/nvm will destroy any nvm-installed Node installations
# upon upgrade/reinstall.
#
# Type `nvm help` for further information.
#
# Bash completion has been installed to:
#   /usr/local/etc/bash_completion.d

if [ ! -d "$HOME/.nvm" ] ; then
  mkdir -pv "$HOME/.nvm"
fi

# Install Node.js.
nvm install stable

nvm alias default stable
