#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Mail
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.mail'

put 'Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>`.'
use AddressesIncludeNameOnPasteboard false

# put 'Add the keyboard shortcut ⌘ + Enter to send an email.'
# use NSUserKeyEquivalents -dict-add 'Send' '@\\U21a9'
