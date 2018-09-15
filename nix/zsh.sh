#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Z Shell
+ - - - - - - - - - - - - - - - - - - - -
'

# Use an updated Z shell as the default shell.
# https://www.zsh.org/
# https://johndjameson.com/blog/updating-your-shell-with-homebrew/
# https://stackoverflow.com/questions/17648621/how-do-i-update-zsh-to-the-latest-version/17649823#17649823
nix-env --install --attr nixpkgs.zsh

if we_have zsh ; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  # TODO: fix the Nix-installed zsh crashing iTerm when it's
  # attempted to be set as the login shell
  # chsh -s "$(which zsh)"

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
fi
