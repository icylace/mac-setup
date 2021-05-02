#!/usr/bin/env bash

# ------------------------------------------------------------------------------
#  Setup a Mac.
# ------------------------------------------------------------------------------
#
# TODO: update instructions
#
# First, make sure OS X is updated and restart if necessary:
#
# ```shell
# sudo softwareupdate -i -a
# ```
#
# To use this setup script, open up ~/Applications/Utilities/Terminal then run:
#
# ```shell
# bash <(curl -sSL https://raw.githubusercontent.com/icylace/dotfiles/master/mac-setup/setup-mac.sh)
# ```
#
# Heavy influence and much copying from:
# - https://gist.github.com/brandonb927/3195465
# - https://github.com/holman/dotfiles
# - https://github.com/kevinrenskers/dotfiles
# - https://github.com/travi/dotfiles
# - https://github.com/virtualswede/osx-bootstrap
# - https://www.defaults-write.com/
#

# We're focusing on macOS so abort if we're not in it.
[[ "$OSTYPE" =~ ^darwin ]] || return 1

source ./init.sh

red '
###############################################
#        DO NOT RUN THIS SCRIPT BLINDLY       #
#        YOU WILL PROBABLY REGRET IT...       #
#                                             #
#              READ IT THOROUGHLY             #
#         AND EDIT TO SUIT YOUR NEEDS         #
###############################################
'

# red '
# Have you read through the script you are about to run and
# understood that it will make changes to your computer? (y/N)
# '

# proceeding=false

# read -r response
# case $response in
#   [yY]) proceeding=true break;;
#   *) break;;
# esac

# if [ ! $proceeding ] ; then
#   red 'Please go read the script.  It is well worth your time.'
#   exit
# fi

# # Now we begin. Ask for the administrator password upfront and run a
# # keep-alive to update existing `sudo` time stamp until script has finished.
# sudo -v
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# source ./homebrew/homebrew.sh
# source ./nix/nix.sh
# source ./yarn/yarn.sh
# source ./mas/mas.sh
# source ./nvm/nvm.sh
# source ./stack/haskell.sh
# source ./vscode/vscode.sh
# source ./direct/direct.sh
# source ./yarn/yarn.sh
# source ./appledev.sh
source ./user-defaults/user-defaults.sh

# e 'Done.  Note that some apps and settings changs require a logout/restart to take effect.'
# sudo shutdown -r now 'Rebooting now...'

# ------------------------------------------------------------------------------

# TODO: considering these

# Dark Boot
# Make your Macs boot and login screens pop
# https://www.macenhance.com/darkboot

# macpaw-gemini
# hazel - useful to me ?
# justlooking - use xee instead ?
# ripit - still useful ?
# xact - still useful ?
# xee - use justlooking instead ?
# deeper
# maintenance
# clamxav
# hex-fiend - useful to me ?
# carbon-copy-cloner - use time machine instead ?
# soundflower - still useful ?

# copy - still useful ?
# thunderbird-beta - useful for archiving email ?

# cobook

# tunatic - useful to me ?
# fontdoctor ?
# fontvista ?
# winclone - still useful ?
# jackpilot - still useful ?
# plug spy - still useful ?

# sugarsync - still useful ?
# elephant drive - still useful ?

# Celtx
# From script to shoot, Celtx kickstarts your production with
# cloud-based planning tools to create better content faster.
# https://www.celtx.com/index.html



# ------------------------------------------------------------------------------
#  Post-install setup.
# ------------------------------------------------------------------------------

#
# Google Chrome
# 1.  Go to `chrome://flags`.
# 2.  Enable "Enable Developer Tools experiments."
# 3.  Restart Chrome.
# 4.  Open "Developer Tools" (View -> Developer -> Developer Tools)
# 5.  Click on the gear icon in the upper-right corner to open up the settings popup.
# 6.  Go to the "Experiments" panel and check off "Allow custom UI themes".
# 7.  Restart Chrome for it to take effect.
#

#
# Google Chrome - Stylish
#
# Chess.com
# 1.  Dark Forces for Chess.com
#     https://userstyles.org/styles/66123/dark-forces-for-chess-com
#
# Facebook
# 1.  dark-facebook 2
#     https://dtinth.github.io/dark-facebook/
# 2.  Facebook Declutter
#     https://userstyles.org/styles/100032/facebook-declutter
# 3.  MINIMAL FACEBOOK PRO - CLEAN DARK /by robertgall/
#     https://userstyles.org/styles/98266/minimal-facebook-pro-clean-dark-by-robertgall
#
# Github
# 1.  Github Dark
#     https://github.com/StylishThemes/GitHub-Dark
#
# Google
# 1.  MINIMAL GOOGLE PRO - CLEAN DARK /by robertgall/
#     https://userstyles.org/styles/98262/minimal-google-pro-clean-dark-by-robertgall
#
# Google Calendar
# 1.  Google Calendar - Dark Style
#     https://userstyles.org/styles/102256/google-calendar-dark-style
#
# Google Mail
# 1.  Gmail dark
#     https://userstyles.org/styles/101479/gmail-dark
#
# reddit
# 1.  Reddit Web 2.0 Dynamic (Wide) (RES Friendly)
#     https://userstyles.org/styles/80084/reddit-web-2-0-dynamic-wide-res-friendly
#
# StackOverflow
# 1.  Stackoverflow Dark theme for Stylish
#     https://github.com/StylishThemes/StackOverflow-Dark
#
# Stylish
# 1.  MINIMAL USERSTYLES PRO - CLEAN DARK /by robertgall/
#     https://userstyles.org/styles/98263/minimal-userstyles-pro-clean-dark-by-robertgall
#
# Sublime Text
# 1.  Sublimetext themes and skins
#     https://userstyles.org/styles/browse/sublimetext
#
# Wikipedia
# 1.  Wikipedia - Dark, blue, simple
#     https://userstyles.org/styles/64023/wikipedia-dark-blue-simple
#


# other sync:

# Firefox Sync
# Google Dashboard





# TODO: check on this later
# # Iris
# # The World's best Blue light filter and Eye protection Software
# # https://iristech.co/
# brew cask install iris
