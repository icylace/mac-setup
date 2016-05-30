#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                  Text Edit                  -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults com.apple.TextEdit'

t 'Open and save files as UTF-8.'
+ PlainTextEncoding 4
+ PlainTextEncodingForWrite 4

t 'Use plain text mode for new documents.'
+ RichText 0
