#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                 Path Finder                 -'
blue '-                File manager.                -'
blue '-      http://cocoatech.com/pathfinder/       -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.cocoatech.PathFinder'

t 'Set the text editor to use.'
d textEditorApplicationPath "'$(readlink $HOME/Applications/Sublime\ Text.app)'"

t 'Set the terminal emulator to use.'
d kTerminalApplicationPath "'$(readlink $HOME/Applications/iTerm.app)'"

t 'Make Path Finder the default file viewer.'
d pathFinderIsDefaultFileViewer true

t 'Set the default folder.'
d kNTDefaultTabPath "$HOME"

t 'Make sure files are copied correctly.'
d NTVerifyCopiedFiles true

t 'Use Base-2 math for file sizes.'
d useBase2MathForSizes true

t 'Disable the warning on quit.'
d disableWarnOnQuit true
