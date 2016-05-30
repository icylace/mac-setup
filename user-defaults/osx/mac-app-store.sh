#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Mac App Store                -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.appstore'

t 'Enable Debug Menu in the Mac App Store.'
d ShowDebugMenu true

t 'Enable the WebKit Developer Tools in the Mac App Store.'
d WebKitDeveloperExtras true
