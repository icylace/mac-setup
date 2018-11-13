#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Z Shell
+ - - - - - - - - - - - - - - - - - - - -
'

# Z shell
# A UNIX command interpreter (shell).
# https://www.zsh.org/
nix-env --install --attr nixpkgs.zsh

# Use our up-to-date Z shell as the default shell.
# https://johndjameson.com/blog/updating-your-shell-with-homebrew/
# https://stackoverflow.com/a/17649823
chsh -s "$HOME/.nix-profile/bin/zsh"

# zsh-completions
# Additional completion definitions for Zsh.
# https://github.com/zsh-users/zsh-completions
nix-env --install --attr nixpkgs.zsh-completions

# zsh-syntax-highlighting
# Fish shell like syntax highlighting for Zsh.
# https://github.com/zsh-users/zsh-syntax-highlighting
nix-env --install --attr nixpkgs.zsh-syntax-highlighting

# zplug
# Zsh plugin manager.
# https://github.com/zplug/zplug
# https://github.com/zplug/zplug/issues/239#issuecomment-253048974
brew install zplug --HEAD
