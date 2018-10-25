#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Google Chrome
:  Web browser.
:  https://www.google.com/chrome/
+ - - - - - - - - - - - - - - - - - - - -
'

alias +='write_defaults com.google.Chrome'

t 'Disable two-finger swipe navigation.'
+ AppleEnableSwipeNavigateWithScrolls false
