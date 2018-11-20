#!/usr/bin/env bash

# MessagePack
# Library for a binary-based efficient data interchange format
# https://msgpack.org/
brew install msgpack

# terminal-notifier
# Send macOS User Notifications from the command-line
# https://github.com/julienXX/terminal-notifier
brew install terminal-notifier

# ------------------------------------------------------------------------------

# tup
# File-based build system.
# http://gittup.org/tup/
brew tap homebrew/fuse
brew install tup
brew cask install osxfuse

# ------------------------------------------------------------------------------

# BootChamp
# Quickly reboots into the Windows.
# https://kainjow.com/
brew cask install bootchamp

# CheatSheet
# Lists all active shortcut keys for the current application.
# https://grandtotal.biz/CheatSheet/
brew cask install cheatsheet

# DaisyDisk
# Disk space analyzer.
# https://daisydiskapp.com/
brew cask install daisydisk

# Karabiner
# A powerful and stable keyboard customizer for macOS.
# https://pqrs.org/osx/karabiner/
brew cask install karabiner-element

# Pacifist
# Archive file manager.
# https://charlessoft.com/
brew cask install pacifist

# Sequel Pro
# MySQL database manager.
# http://nightly.sequelpro.com/
brew cask install sequel-pro-nightly

# Shortcat
# Keyboard tool that lets you "Click" buttons and control your apps.
# https://shortcatapp.com/
brew cask install shortcat

# Skala Color
# Color picker.
# https://bjango.com/mac/skalacolor/
brew cask install colorpicker-skalacolor

# Skype
# VoIP and video conferencing client.
# https://www.skype.com/en/
brew cask install skype

# Spectacle
# Window manager.
# https://www.spectacleapp.com/
brew cask install spectacle

# Transmission
# BitTorrent client.
# https://www.transmissionbt.com/
brew cask install transmission

# ------------------------------------------------------------------------------

# VirtualBox
# Virtual environment manager.
# https://www.virtualbox.org/
brew cask install virtualbox
brew cask install virtualbox-extension-pack

# ------------------------------------------------------------------------------

# Vagrant
# Virtual development environment manager.
# https://www.vagrantup.com/
brew cask install vagrant

vagrant plugin install vagrant-vbguest

# https://github.com/mitchellh/vagrant/issues/8519#issuecomment-297413831
vagrant plugin install vagrant-share --plugin-version 1.1.8
