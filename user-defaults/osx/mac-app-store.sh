#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Mac App Store
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.appstore'

put 'Enable Debug Menu in the Mac App Store.'
use ShowDebugMenu true

put 'Enable the WebKit Developer Tools in the Mac App Store.'
use WebKitDeveloperExtras true
