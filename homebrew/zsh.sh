#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Z Shell
+ - - - - - - - - - - - - - - - - - - - -
'

# Z shell
# UNIX shell (command interpreter)
# https://www.zsh.org/
brew install zsh
# Use our up-to-date Z shell as the default shell.
# https://johndjameson.com/blog/updating-your-shell-with-homebrew/
# https://stackoverflow.com/a/17649823
sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s /usr/local/bin/zsh

# zsh-completions
# Additional completion definitions for Zsh.
# https://github.com/zsh-users/zsh-completions
brew install zsh-completions
#
# Installation notes:
#
# To activate these completions, add the following to your .zshrc:
#
#     fpath=(/usr/local/share/zsh-completions $fpath)
#
# You may also need to force rebuild `zcompdump`:
#
#     rm -f ~/.zcompdump; compinit
#
# Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
# to load these completions, you may need to run this:
#
#     chmod go-w '/usr/local/share'

# zsh-syntax-highlighting
# Fish shell like syntax highlighting for Zsh.
# https://github.com/zsh-users/zsh-syntax-highlighting
brew install zsh-syntax-highlighting
#
# Installation notes:
#
# To activate the syntax highlighting, add the following at the end of your .zshrc:
#
#     source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
# If you receive "highlighters directory not found" error message,
# you may need to add the following to your .zshenv:
#
#     export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# zplug
# Zsh plugin manager.
# https://github.com/zplug/zplug
# https://github.com/zplug/zplug/issues/239#issuecomment-253048974
brew install zplug --HEAD
#
# Installation notes:
#
# In order to use zplug, please add the following to your .zshrc:
#
#     export ZPLUG_HOME=/usr/local/opt/zplug
#     source $ZPLUG_HOME/init.zsh
