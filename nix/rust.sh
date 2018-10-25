#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Rust
+ - - - - - - - - - - - - - - - - - - - -
'

# rustup
# The Rust toolchain installer
# https://rustup.rs/
nix-env --install --attr nixpkgs.rustup

# Rust
# Safe, concurrent, practical language
# https://www.rust-lang.org/en-US/
rustup install stable
rustup default stable
