#!/usr/bin/env bash

# GraphicsMagick
# Image processor.
# http://www.graphicsmagick.org/
nix-env --install --attr nixpkgs.graphicsmagick

# # FFmpeg
# # Play, record, convert, and stream audio and video
# # https://ffmpeg.org/
# nix-env --install --attr nixpkgs.ffmpeg_4

# mpv
# A media player that supports many video formats (MPlayer and mplayer2 fork)
# https://mpv.io/
nix-env --install --attr nixpkgs.mpv

# catimg
# Prints images in the terminal by using Unicode characters.
# https://github.com/posva/catimg
brew install catimg

# Xpdf
# Viewer for Portable Document Format (PDF) files
# https://www.xpdfreader.com/
nix-env --install --attr nixpkgs.xpdf
