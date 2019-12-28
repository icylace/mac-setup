#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Rust
+ - - - - - - - - - - - - - - - - - - - -
'

# rustup
# The Rust toolchain installer
# https://rustup.rs/
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Rust
# Safe, concurrent, practical language
# https://www.rust-lang.org/en-US/
rustup install stable
rustup default stable
