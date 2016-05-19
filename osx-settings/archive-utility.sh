#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-               Archive Utility               -'
blue '-----------------------------------------------'
blue ''

alias dw='defaults write com.apple.archiveutility'

et 'Move archive files to trash after expansion.'
dw dearchive-move-after -string '~/.Trash'
# Other values:
#   /dev/null = delete directly
#   .         = leave alone (default)
