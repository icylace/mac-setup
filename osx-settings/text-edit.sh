#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                  Text Edit                  -'
blue '-----------------------------------------------'
blue ''

alias dw='defaults write com.apple.TextEdit'

et 'Open and save files as UTF-8.'
dw PlainTextEncoding -int 4
dw PlainTextEncodingForWrite -int 4

et 'Use plain text mode for new documents.'
dw RichText -int 0
