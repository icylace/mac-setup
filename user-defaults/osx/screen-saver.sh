#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Screen Saver                 -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults com.apple.screensaver'

t 'Require password immediately after sleep or screensaver begins.'
+ askForPassword 1
+ askForPasswordDelay 0
