#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Mac App Store                -'
blue '-----------------------------------------------'
blue ''

alias dw='defaults write com.apple.appstore'

et 'Enable Debug Menu in the Mac App Store.'
dw ShowDebugMenu -bool true

et 'Enable the WebKit Developer Tools in the Mac App Store.'
dw WebKitDeveloperExtras -bool true
