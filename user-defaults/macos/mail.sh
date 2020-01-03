#!/usr/bin/env bash

source ../../init.sh
source ../write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  Mail
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.mail'

put 'Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>`.'
use AddressesIncludeNameOnPasteboard false
