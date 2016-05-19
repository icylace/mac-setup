#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                  Terminal                   -'
blue '-----------------------------------------------'
blue ''

alias dw='defaults write com.apple.terminal'

et 'Only use UTF-8.'
dw StringEncodings -array 4
