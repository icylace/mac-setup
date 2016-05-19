#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                 Path Finder                 -'
blue '-                File manager.                -'
blue '-      http://cocoatech.com/pathfinder/       -'
blue '-----------------------------------------------'
blue ''

alias dw='defaults write com.cocoatech.PathFinder'

et 'Set the text editor to use.'
dw textEditorApplicationPath -string "'$(readlink ~/Applications/Sublime\ Text.app)'"

et 'Set the terminal emulator to use.'
dw kTerminalApplicationPath -string "'$(readlink ~/Applications/iTerm.app)'"

et 'Make Path Finder the default file viewer.'
dw pathFinderIsDefaultFileViewer -bool true

et 'Set the default folder.'
dw kNTDefaultTabPath -string "$HOME"

et 'Make sure files are copied correctly.'
dw NTVerifyCopiedFiles -bool true

et 'Use Base-2 math for file sizes.'
dw useBase2MathForSizes -bool true

et 'Disable the warning on quit.'
dw disableWarnOnQuit -bool true
