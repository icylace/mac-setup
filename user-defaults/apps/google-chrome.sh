#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Google Chrome                -'
blue '-                 Web browser.                -'
blue '-        http://www.google.com/chrome/        -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults com.google.Chrome'

t 'Disable two-finger swipe navigation.'
+ AppleEnableSwipeNavigateWithScrolls false

t 'Allow installing user scripts via GitHub Gist or Userscripts.org.'
+ ExtensionInstallSources -array 'https://gist.githubusercontent.com/' 'http://userscripts.org/*'

# ------------------------------------------------------------------------------

alias +='write_defaults com.google.Chrome.canary'

+ ExtensionInstallSources -array 'https://gist.githubusercontent.com/' 'http://userscripts.org/*'
