#!/usr/bin/env bash

# GraphicsMagick
# Image processor.
# http://www.graphicsmagick.org/
nix-env --install --attr nixpkgs.graphicsmagick

# Graphviz
# Graph visualizer.
# https://graphviz.org/
nix-env --install --attr nixpkgs.graphviz

# # FFmpeg
# # Play, record, convert, and stream audio and video
# # https://ffmpeg.org/
# nix-env --install --attr nixpkgs.ffmpeg_4

# mpv
# A media player that supports many video formats (MPlayer and mplayer2 fork)
# https://mpv.io/
nix-env --install --attr nixpkgs.mpv

# Xpdf
# Viewer for Portable Document Format (PDF) files
# https://www.xpdfreader.com/
nix-env --install --attr nixpkgs.xpdf
