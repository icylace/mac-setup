#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                  Terminal                   -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults com.apple.terminal'

t 'Only use UTF-8.'
+ StringEncodings -array 4
