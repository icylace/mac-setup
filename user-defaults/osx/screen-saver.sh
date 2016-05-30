#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Screen Saver                 -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.screensaver'

t 'Require password immediately after sleep or screensaver begins.'
d askForPassword 1
d askForPasswordDelay 0
