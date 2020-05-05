#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Rust-based tools
+ - - - - - - - - - - - - - - - - - - - -
'

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
