#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                  Text Edit                  -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.TextEdit'

t 'Open and save files as UTF-8.'
d PlainTextEncoding 4
d PlainTextEncodingForWrite 4

t 'Use plain text mode for new documents.'
d RichText 0
