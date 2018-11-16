#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Screen Saver
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.screensaver'

put 'Require password immediately after sleep or screensaver begins.'
use askForPassword 1
use askForPasswordDelay 0
