#!/usr/bin/env bash

# Archey
# Displays basic system information.
# https://obihann.github.io/archey-osx/
brew install archey

# ascii
# List ASCII idiomatic names and octal/decimal code-point forms
# http://catb.org/~esr/ascii/
brew install ascii

# GNU Aspell
# Spell checker with better logic than ispell
# http://aspell.net/
brew install aspell

# bat
# Clone of cat(1) with syntax highlighting and Git integration
# https://github.com/sharkdp/bat
brew install bat

# Byobu
# Text-based window manager and terminal multiplexer
# https://byobu.org/
brew install byobu

# catimg
# Prints images in the terminal by using Unicode characters.
# https://github.com/posva/catimg
brew install catimg

# GNU Core Utilities
# Basic file, shell, and text manipulation utilities.
# https://www.gnu.org/software/coreutils/coreutils.html
brew install coreutils

# curl
# command line tool and library for transferring data with URLs
# https://curl.haxx.se
brew install curl

# Curlie
# The power of curl, the ease of use of httpie.
# https://curlie.io/
brew install rs/tap/curlie

# di
# Advanced df-like disk information utility
# https://gentoo.com/di/
brew install di

# dwdiff
# A diff program that operates at the word level instead of the line level.
# https://os.ghalkes.nl/dwdiff.html
brew install dwdiff

# Elvish
# Friendly and expressive shell
# https://elv.sh/
brew install elvish

# exa
# A modern replacement for ls.
# https://the.exa.website/
brew install exa

# fd
# A simple, fast and user-friendly alternative to 'find'
# https://github.com/sharkdp/fd
brew install fd

# GNU Find Utilities
# Basic directory searching utilities.
# https://www.gnu.org/software/findutils/
# GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed.
brew install findutils

# fzf
# 🌸 A command-line fuzzy finder
# https://github.com/junegunn/fzf
brew install fzf

# GraphicsMagick
# Image processing tools collection
# http://www.graphicsmagick.org/
brew install graphicsmagick

# Graphviz
# Graphviz is open source graph visualization software.
# https://graphviz.org/
brew install graphviz

# GNU Grep
# Grep searches one or more input files for lines containing a match to a specified pattern.
# https://www.gnu.org/software/grep/
brew install grep

# Heroku CLI
# Everything you need to get started using Heroku
# https://devcenter.heroku.com/articles/heroku-cli
brew tap heroku/brew && brew install heroku

# hexyl
# A command-line hex viewer
# https://github.com/sharkdp/hexyl
brew install hexyl

# highlight
# Source code to highlighted text formatter.
# http://andre-simon.de/doku/highlight/en/highlight.php
brew install highlight

# hr
# A horizontal 📏 for your terminal
# https://github.com/LuRsT/hr
brew install hr

# htop
# An interactive process viewer
# https://hisham.hm/htop/
brew install htop

# HTTPie
# A command line HTTP client whose goal is to make CLI human-friendly
# https://httpie.org/
brew install httpie

# hyperfine
# A command-line benchmarking tool.
# https://github.com/sharkdp/hyperfine
brew install hyperfine

# icdiff
# Improved colored diff
# https://www.jefftk.com/icdiff
brew install icdiff

# jq
# jq is a lightweight and flexible command-line JSON processor.
# https://stedolan.github.io/jq/
brew install jq

# Lynis
# Security and system auditing tool to harden systems
# https://cisofy.com/lynis/
# https://github.com/CISOfy/lynis
brew install lynis

# MOST
# A terminal pager similar to 'more' and 'less'
# https://jedsoft.org/most/
brew install most

# mpv
# a free, open source, and cross-platform media player
# https://mpv.io/
brew install mpv

# NCurses Disk Usage
# Ncdu is a disk usage analyzer with an ncurses interface.
# https://dev.yorhel.nl/ncdu
brew install ncdu

# Neovim
# hyperextensible Vim-based text editor
# https://neovim.io/
brew install neovim

# procs
# A modern replacement for ps written in Rust
# https://github.com/dalance/procs
brew install procs

# Pipe Viewer
# Monitor data's progress through a pipe
# https://www.ivarch.com/programs/pv
brew install pv

# ripgrep
# A utility that combines the usability of The Silver Searcher with
# the raw speed of grep
# https://blog.burntsushi.net/ripgrep/
# https://github.com/BurntSushi/ripgrep
brew install ripgrep

# spark
# Sparklines for the shell
# https://zachholman.com/spark/
brew install spark

# speedtest-cli
# Command line interface for testing internet bandwidth using speedtest.net
# https://github.com/sivel/speedtest-cli
brew install speedtest-cli

# tmux
# A "terminal multiplexer", it enables a number of terminals to be accessed
# and controlled from a single terminal.
# https://github.com/tmux/tmux
brew install tmux

# trash
# Moves files and folders to the OS X trash.
# https://hasseg.org/trash/
brew install trash

# Tree
# Display directories as trees (with optional color/HTML output)
# http://mama.indstate.edu/users/ice/tree/
brew install tree

# z
# Navigate your most used directories based on 'frecency'.
# https://github.com/rupa/z
brew install z

blue '
+-------------------------------------------------------------------------------
:  macOS Applications.
+ - - - - - - - - - - - - - - - - - - - -
'

# AppCleaner
# Application uninstaller.
# https://freemacsoft.net/appcleaner/
brew cask install appcleaner

# BetterZip 4
# > the next generation of archiving
# https://macitbetter.com/
brew cask install betterzip

# Beyond Compare
# File and folder comparison tool.
# https://scootersoftware.com/
brew cask install beyond-compare

# DaisyDisk
# Disk space analyzer.
# https://daisydiskapp.com/
brew cask install daisydisk

# Firefox Developer Edition
# Web browser with preinstalled web developer tools.
# https://www.mozilla.org/en-US/firefox/developer/
brew cask install firefox-developer-edition

# Google Chrome
# Web browser.
# https://www.google.com/chrome/
brew cask install google-chrome

# TODO: check on this later
# # Iris
# # The World's best Blue light filter and Eye protection Software
# # https://iristech.co/
# brew cask install iris

# LibreOffice
# Office suite.
# https://www.libreoffice.org/
brew cask install libreoffice

# logitech-options
# https://www.logitech.com/en-us/product/options
# https://support.logitech.com/en_us/software/options
# Caveats: You must reboot for the installation of logitech-options to
# take effect.
brew cask install logitech-options

# OnyX
# System maintenance utility.
# https://www.titanium-software.fr/en/index.html
brew cask install onyx

# Opera
# Web browser.
# https://www.opera.com/
brew cask install opera

# Path Finder
# File manager for macOS
# https://cocoatech.com/
brew cask install path-finder

# Paw
# HTTP client that lets you test and describe the APIs you build or consume.
# https://paw.cloud/
brew cask install paw

# pup
# Parsing HTML at the command line
# https://github.com/EricChiang/pup
brew install pup

# ShellCheck
# Static analysis and lint tool, for (ba)sh scripts
# https://www.shellcheck.net/
brew install shellcheck

# # TODO: check later if this works in Catalina finally
# # VLC
# # Media player.
# # https://www.videolan.org/vlc/
# brew cask install vlc

# GNU Wget
# Internet file retriever
# https://www.gnu.org/software/wget/
brew install wget

blue '
+-------------------------------------------------------------------------------
:  Menu bar apps.
+ - - - - - - - - - - - - - - - - - - - -
'

# Bartender
# Menu bar manager.
# https://www.macbartender.com/
brew cask install bartender

# Boom 3D
# System-wide volume booster and equalizer.
# https://www.globaldelight.com/boom/
brew cask install boom-3d

# Dash
# Dash gives your Mac instant offline access to 200+ API documentation sets.
# https://kapeli.com/dash
brew cask install dash

# Dropbox
# File sharer with cloud storage.
# https://www.dropbox.com/
brew cask install dropbox

# Flux
# Screen color temperature manager.
# https://justgetflux.com/
brew cask install flux

# iStat Menus
# System monitor.
# https://bjango.com/mac/istatmenus/
brew cask install istat-menus

# KeepingYouAwake
# System sleep manager.
# https://github.com/newmarcel/KeepingYouAwake
brew cask install keepingyouawake

# nvALT
# Notes manager.
# http://brettterpstra.com/projects/nvalt/
brew cask install nvalt
# TODO: keep an eye on this...
# https://nvultra.com/

blue '
+-------------------------------------------------------------------------------
:  Tools that run in the background.
+ - - - - - - - - - - - - - - - - - - - -
'

# HyperDock
# Dock enhancer and window placement manager.
# https://bahoom.com/hyperdock/
brew cask install hyperdock

# miniserve
# High performance static file server
# https://github.com/svenstaro/miniserve
brew install miniserve

# ngrok
# Introspected tunnels to localhost.
# https://ngrok.com/
brew cask install ngrok

# The Unarchiver
# Archive file extractor.
# https://theunarchiver.com/
brew cask install the-unarchiver
