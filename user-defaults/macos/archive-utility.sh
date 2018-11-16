#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Archive Utility
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.archiveutility'

put 'Move archive files to trash after expansion.'
use dearchive-move-after "$HOME/.Trash"
# Other values:
#   /dev/null = delete directly
#   .         = leave alone (default)
