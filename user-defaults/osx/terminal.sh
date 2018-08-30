#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Terminal
+ - - - - - - - - - - - - - - - - - - - -
'

alias +='write_defaults com.apple.terminal'

t 'Only use UTF-8.'
+ StringEncodings -array 4
