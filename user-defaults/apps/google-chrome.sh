#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Google Chrome
:  Web browser.
:  https://www.google.com/chrome/
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.google.Chrome'

put 'Disable two-finger swipe navigation.'
use AppleEnableSwipeNavigateWithScrolls false
