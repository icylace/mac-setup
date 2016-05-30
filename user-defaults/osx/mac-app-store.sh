#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Mac App Store                -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults com.apple.appstore'

t 'Enable Debug Menu in the Mac App Store.'
+ ShowDebugMenu true

t 'Enable the WebKit Developer Tools in the Mac App Store.'
+ WebKitDeveloperExtras true
