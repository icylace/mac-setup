#!/usr/bin/env bash

# ------------------------------------------------------------------------------
#  Setup a Mac.
# ------------------------------------------------------------------------------
#
#  First, make sure OS X is updated and restart if necessary:
#
#      sudo softwareupdate -i -a
#
#  To use this setup script, open up ~/Applications/Utilities/Terminal then run:
#
#      bash <(curl -s https://raw.githubusercontent.com/icylace/dotfiles/master/setup/bootstrap.sh)
#
#  Heavy influence and much copying from:
#  - http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac
#  - http://www.defaults-write.com/
#  - https://github.com/holman/dotfiles
#  - https://github.com/kevinrenskers/dotfiles
#  - https://github.com/travi/dotfiles
#  - https://github.com/virtualswede/osx-bootstrap
#  - https://gist.github.com/brandonb927/3195465
#

source 'init.sh'

red '
###############################################
#        DO NOT RUN THIS SCRIPT BLINDLY       #
#        YOU WILL PROBABLY REGRET IT...       #
#                                             #
#              READ IT THOROUGHLY             #
#         AND EDIT TO SUIT YOUR NEEDS         #
###############################################
'

# proceeding=false

# e ''
# e "Have you read through the script you're about to run and " red
# e 'understood that it will make changes to your computer? (y/n)' red
# read -r response
# case $response in
#   [yY]) proceeding=true break;;
#   *) break;;
# esac

# if [ ! $proceeding ] ; then
#   e 'Please go read the script.  It only takes a few minutes.' red
#   exit
# fi

# # Now we begin.  Ask for the administrator password upfront and run a
# # keep-alive to update existing `sudo` time stamp until script has finished.
# sudo -v
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

source 'homebrew/homebrew.sh'
source 'appledev.sh'
source 'user-defaults/defaults.sh'


# e 'Done.  Note that some apps and settings changs require a logout/restart to take effect.'
# sudo shutdown -r now 'Rebooting now...'

#
# Considering:
#

# adobe-creative-cloud
# macpaw-gemini
# hazel - useful to me ?
# justlooking - use xee instead ?
# ripit - still useful ?
# xact - still useful ?
# xee - use justlooking instead ?
# fontexplorer-x-pro - still useful ?
# deeper
# maintenance
# tinkertool
# clamxav
# hex-fiend - useful to me ?
# omnigraffle - still useful ?
# omnigraffle-professional5 - still useful ?
# skim - useful to me ?
# xscope - still useful to me ?
# carbon-copy-cloner - use time machine instead ?
# sitesucker - still useful ?
# soundflower - still useful ?

# copy - still useful ?
# pdfpenpro - still useful ?
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

# celtx - still useful ?


# http://nodejs.org/
# e "Installing node (without npm)" $blue
# # For more info, see here https://gist.github.com/DanHerbert/9520689
# brew install node --without-npm
# e prefix=~/.node >> ~/.npmrc
# curl -L https://www.npmjs.org/install.sh | sh
# export PATH="$HOME/.node/bin:$PATH"


# ------------------------------------------------------------------------------
#  Apps to install manually.
# ------------------------------------------------------------------------------

# Breakaway 2.1
# iTunes playback controller.
# https://github.com/steakknife/breakaway
# Fork of http://mutablecode.com/apps/breakaway.html

# Synergy Pro
# Shares your mouse and keyboard between multiple computers.
# http://symless.com/synergy/




# exit 0



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
#     http://dtinth.github.io/dark-facebook/
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


# TODO
# - Figure out a way to programmatically turn off Caps Lock key
# - check for the existence of PGP key stuff as this is important for GitHub
#   thingies and probably other things too


# install script stuff:

# find a way to disable default system shortcut keys



# adjust:
# defaults write -g InitialKeyRepeat -int 12
# defaults write -g KeyRepeat -int 0


# uninstall some quicklook plugins and remove their script setups


# brew with node and npm





# casks:

# font-inconsolata-g-for-powerline






# sync through Dropbox support built-in:

# Path Finder ?



# manual sync through Dropbox:

# MAMP & MAMP PRO (export)?
# Sublime Text ?



# other sync:

# Firefox Sync
# Google Dashboard
# iCloud ?


# TODO
# - setup Alfred Preferences more
#   - theme


# TODO
# - figure out preferences sharing for:
# ControllerMate
# Ulysses
# VirtualBox
# LibreOffice
# PhpStorm
#
# - consider using .plist or "defaults write" for:
# nvALT
# The Hit List
# VLC
# Sequel Pro

# ----

# ~ Transmit
