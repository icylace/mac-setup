#!/usr/bin/env bash

blue '
-----------------------------------------------
-                   Z Shell                   -
-----------------------------------------------
'

# Use an updated Z shell as the default shell.
# http://zsh.sourceforge.net/
# http://johndjameson.com/blog/updating-your-shell-with-homebrew/
# http://stackoverflow.com/questions/17648621/how-do-i-update-zsh-to-the-latest-version/17649823#17649823
brew install zsh
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s "$(which zsh)"

if we_have zsh ; then
  # zplug
  # Zsh plugin manager.
  # http://zplug.sh/
  # https://github.com/zplug/zplug/issues/239#issuecomment-253048974
  brew install zplug --HEAD
fi
