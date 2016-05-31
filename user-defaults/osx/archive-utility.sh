#!/usr/bin/env bash

blue '
-----------------------------------------------
-               Archive Utility               -
-----------------------------------------------
'

alias +='write_defaults com.apple.archiveutility'

t 'Move archive files to trash after expansion.'
+ dearchive-move-after "$HOME/.Trash"
# Other values:
#   /dev/null = delete directly
#   .         = leave alone (default)
