#!/usr/bin/env bash

source ./init.sh
source ./user-defaults/write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  Text Edit
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.TextEdit'

put 'Open and save files as UTF-8.'
use PlainTextEncoding 4
use PlainTextEncodingForWrite 4

put 'Use plain text mode for new documents.'
use RichText 0
