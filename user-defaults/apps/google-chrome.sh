#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Google Chrome                -'
blue '-                 Web browser.                -'
blue '-        http://www.google.com/chrome/        -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.google.Chrome'

t 'Disable two-finger swipe navigation.'
d AppleEnableSwipeNavigateWithScrolls false

t 'Allow installing user scripts via GitHub Gist or Userscripts.org.'
d ExtensionInstallSources -array 'https://gist.githubusercontent.com/' 'http://userscripts.org/*'

# ------------------------------------------------------------------------------

alias d='write_defaults com.google.Chrome.canary'

d ExtensionInstallSources -array 'https://gist.githubusercontent.com/' 'http://userscripts.org/*'
