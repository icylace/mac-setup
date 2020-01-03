#!/usr/bin/env bash

if [ ! -d "$HOME/My/CLI/zlua" ] ; then
  mkdir -pv "$HOME/My/CLI/zlua"

  # z.lua
  # A new cd command that helps you navigate faster by learning your habits ⚡️
  # https://github.com/skywind3000/z.lua
  git clone https://github.com/skywind3000/z.lua.git "$HOME/My/CLI/zlua"
fi
