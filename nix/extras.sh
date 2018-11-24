#!/usr/bin/env bash

# ascii
# List ASCII idiomatic names and octal/decimal code-point forms.
# http://catb.org/~esr/ascii/
nix-env --install --attr nixpkgs.ascii

# GNU Aspell
# Spell checker for many languages
# http://aspell.net/
nix-env --install --attr nixpkgs.aspell

# di
# Disk information utility; displays everything 'df' does and more
# https://gentoo.com/di/
nix-env --install --attr nixpkgs.di

# FFmpeg
# Play, record, convert, and stream audio and video
# https://ffmpeg.org/
nix-env --install --attr nixpkgs.ffmpeg_4

# GNU Find Utilities
# Basic directory searching utilities.
# http://www.gnu.org/software/findutils/
# GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed.
nix-env --install --attr nixpkgs.findutils

# GNU Grep
# Searches input files for text matching a specified pattern.
# https://www.gnu.org/software/grep/
nix-env --install --attr nixpkgs.gnugrep

# GraphicsMagick
# GraphicsMagick is the swiss army knife of image processing.
# http://www.graphicsmagick.org/
nix-env --install --attr nixpkgs.graphicsmagick

# hr
# A horizontal bar for your terminal
# https://github.com/LuRsT/hr
nix-env --install --attr nixpkgs.hr

# mpv
# A media player that supports many video formats (MPlayer and mplayer2 fork)
# https://mpv.io/
nix-env --install --attr nixpkgs.mpv

# odt2txt
# A simple converter from OpenDocument Text to plain text
# https://github.com/dstosberg/odt2txt
nix-env --install --attr nixpkgs.odt2txt

# pup
# HTML processor.
# https://github.com/EricChiang/pup
nix-env --install --attr nixpkgs.pup

# Pipe Viewer
# Tool for monitoring the progress of data through a pipeline.
# https://www.ivarch.com/programs/pv.shtml
nix-env --install --attr nixpkgs.pv

# ShellCheck
# Finds bugs in your shell scripts.
# https://www.shellcheck.net/
nix-env --install --attr nixpkgs.shellcheck

# socat
# A utility for bidirectional data transfer between two independent
# data channels
# http://www.dest-unreach.org/socat/
nix-env --install --attr nixpkgs.socat

# Tree
# Recursive directory lister.
# http://mama.indstate.edu/users/ice/tree/
# brew install tree
nix-env --install --attr nixpkgs.tree

# w3m
# A text-mode web browser
# http://w3m.sourceforge.net/
nix-env --install --attr nixpkgs.w3m

# GNU Wget
# HTTP, HTTPS, and FTP client.
# http://www.gnu.org/software/wget/
nix-env --install --attr nixpkgs.wget

# Xpdf
# Viewer for Portable Document Format (PDF) files
# https://www.xpdfreader.com/
nix-env --install --attr nixpkgs.xpdf
