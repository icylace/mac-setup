#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Rust
+ - - - - - - - - - - - - - - - - - - - -
'

# rustup
# The Rust toolchain installer
# https://rustup.rs/
# https://github.com/rust-lang/rustup
# https://rust-lang.github.io/rustup/
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Rust
# Safe, concurrent, practical language
# https://www.rust-lang.org/
rustup install stable
rustup default stable
