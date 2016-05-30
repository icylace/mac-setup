#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                  Terminal                   -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.terminal'

t 'Only use UTF-8.'
d StringEncodings -array 4
