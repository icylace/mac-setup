#!/usr/bin/env bash

# FFmpeg
# Play, record, convert, and stream audio and video
# https://ffmpeg.org/
brew install ffmpeg

# MessagePack
# Library for a binary-based efficient data interchange format
# https://msgpack.org/
brew install msgpack

# socat
# netcat on steroids
# http://www.dest-unreach.org/socat/
brew install socat

# # terminal-notifier
# # Send macOS User Notifications from the command-line
# # https://github.com/julienXX/terminal-notifier
# brew install terminal-notifier

# # tup
# # File-based build system.
# # http://gittup.org/tup/
# brew tap homebrew/fuse && brew install tup
# brew cask install osxfuse

blue '
+-------------------------------------------------------------------------------
:  macOS Apps.
+ - - - - - - - - - - - - - - - - - - - -
'

# # Adobe Reader
# # PDF reader.
# # https://acrobat.adobe.com/us/en/acrobat/pdf-reader.html
# brew cask install adobe-reader

# # Alfred
# # Application launcher, search tool, and workflow tool.
# # https://www.alfredapp.com/
# brew cask install alfred

# # Clipy
# # Clipboard extension app for macOS.
# # https://clipy-app.com/
# brew cask install clipy

# # ControllerMate
# # Input device remapper.
# # https://www.orderedbytes.com/controllermate/
# brew cask install controllermate

# # Default Folder X
# # Open and Save dialog box enhancer.
# # https://stclairsoft.com/DefaultFolderX/
# brew cask install default-folder-x

# # Google Hangouts
# # Video conferencing web browser plugin.
# # https://google.com/tools/dlpage/hangoutplugin
# brew cask install google-hangouts

# # Hazel
# # Automated Organization for Your Mac.
# # https://www.noodlesoft.com/
# brew cask install hazel

# # Pacifist
# # Archive file manager.
# # https://charlessoft.com/
# brew cask install pacifist

# Sequel Pro
# MySQL/MariaDB database management for macOS
# https://sequelpro.com/test-builds
brew cask install sequel-pro-nightly

# # Shortcat
# # Keyboard tool that lets you "Click" buttons and control your apps.
# # https://shortcatapp.com/
# brew cask install shortcat

# Skype
# VoIP and video conferencing client.
# https://www.skype.com/en/
brew cask install skype

# # Synergy
# # Share one mouse and keyboard between multiple computers
# # https://symless.com/synergy
# brew cask install synergy

# # Transmission
# # BitTorrent client.
# # https://transmissionbt.com/
# brew cask install transmission-cli

# Transmit
# Upload, download, and manage files on tons of servers with an easy, familiar, and powerful UI.
# https://panic.com/transmit/
brew cask install transmit

# VirtualBox
# Virtual environment manager.
# https://www.virtualbox.org/
brew cask install virtualbox
brew cask install virtualbox-extension-pack

# ------------------------------------------------------------------------------

# Vagrant
# Development Environments Made Easy
# https://www.vagrantup.com/
brew cask install vagrant

# vagrant-vbguest
# A Vagrant plugin to keep your VirtualBox Guest Additions up to date
# https://github.com/dotless-de/vagrant-vbguest
vagrant plugin install vagrant-vbguest

# TODO: still necessary ?
# # https://github.com/mitchellh/vagrant/issues/8519#issuecomment-297413831
# vagrant plugin install vagrant-share --plugin-version 1.1.8
