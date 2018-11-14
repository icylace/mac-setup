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

# ------------------------------------------------------------------------------

# twa
# A tiny web auditor with strong opinions.
# https://github.com/trailofbits/twa
# TODO: set things up so we don't need to symlink into `/tmp`
git clone https://github.com/trailofbits/twa.git /tmp/twa
ln -s /tmp/twa/twa /usr/local/bin/twa
ln -s /tmp/twa/tscore /usr/local/bin/tscore
