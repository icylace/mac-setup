#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Rust-based tools
+ - - - - - - - - - - - - - - - - - - - -
'

# dutree
# a tool to analyze file system usage written in Rust
# https://github.com/nachoparker/dutree
# https://ownyourbits.com/2018/03/25/analyze-disk-usage-with-dutree/
cargo install dutree

# sd - s[earch] & d[isplace]
# Intuitive find & replace CLI (sed alternative)
# https://github.com/chmln/sd
cargo install sd

# TODO: compare this with miniserve
# # simple-http-server
# # Simple http server in Rust (Windows/Mac/Linux)
# # https://github.com/TheWaWaR/simple-http-server
# cargo install simple-http-server

# tealdeer
# A very fast implementation of tldr in Rust.
# https://github.com/dbrgn/tealdeer
cargo install tealdeer

# zoxide
# A faster way to navigate your filesystem
# https://github.com/ajeetdsouza/zoxide
cargo install --force zoxide

# vivid
# A generator for LS_COLORS with support for multiple color themes
# https://github.com/sharkdp/vivid
cargo install vivid
# NOTE: Some additional manual installation work required.
# https://github.com/sharkdp/vivid#via-cargo
# https://github.com/sharkdp/vivid#on-other-distrubutions
