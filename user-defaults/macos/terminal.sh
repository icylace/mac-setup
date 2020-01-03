#!/usr/bin/env bash

source ../../init.sh
source ../write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  Terminal
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.terminal'

put 'Only use UTF-8.'
use StringEncodings -array 4
