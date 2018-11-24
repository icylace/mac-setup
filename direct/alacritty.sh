#!/usr/bin/env bash

# Alacritty
# A cross-platform, GPU-accelerated terminal emulator
# https://github.com/jwilm/alacritty

# https://github.com/jwilm/alacritty#manual-installation
git clone https://github.com/jwilm/alacritty.git /tmp/alacritty
cd /tmp/alacritty

# https://github.com/jwilm/alacritty#macos
make app
cp -r target/release/osx/Alacritty.app "$HOME/Applications/"
