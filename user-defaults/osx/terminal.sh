#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Terminal
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.terminal'

put 'Only use UTF-8.'
use StringEncodings -array 4
