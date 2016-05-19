#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Screen Saver                 -'
blue '-----------------------------------------------'
blue ''

alias dw='defaults write com.apple.screensaver'

et 'Require password immediately after sleep or screensaver begins.'
dw askForPassword -int 1
dw askForPasswordDelay -int 0
