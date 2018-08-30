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
brew install zsh

if we_have zsh ; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"

  # zplug
  # Zsh plugin manager.
  # https://github.com/zplug/zplug
  # https://github.com/zplug/zplug/issues/239#issuecomment-253048974
  brew install zplug --HEAD

  # zsh-completions
  # Additional completion definitions for Zsh.
  # https://github.com/zsh-users/zsh-completions
  brew install zsh-completions

  # zsh-syntax-highlighting
  # Fish shell like syntax highlighting for Zsh.
  # https://github.com/zsh-users/zsh-syntax-highlighting
  brew install zsh-syntax-highlighting
fi
