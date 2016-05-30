#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-               Archive Utility               -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults com.apple.archiveutility'

t 'Move archive files to trash after expansion.'
+ dearchive-move-after "$HOME/.Trash"
# Other values:
#   /dev/null = delete directly
#   .         = leave alone (default)
