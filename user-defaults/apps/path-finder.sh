#!/usr/bin/env bash

blue '
-----------------------------------------------
-                 Path Finder                 -
-                File manager.                -
-      http://cocoatech.com/pathfinder/       -
-----------------------------------------------
'

alias +='write_defaults com.cocoatech.PathFinder'

t 'Set the text editor to use.'
+ textEditorApplicationPath "'$(readlink $HOME/Applications/Sublime\ Text.app)'"

t 'Set the terminal emulator to use.'
+ kTerminalApplicationPath "'$(readlink $HOME/Applications/iTerm.app)'"

t 'Make Path Finder the default file viewer.'
+ pathFinderIsDefaultFileViewer true

t 'Set the default folder.'
+ kNTDefaultTabPath "$HOME"

t 'Make sure files are copied correctly.'
+ NTVerifyCopiedFiles true

t 'Use Base-2 math for file sizes.'
+ useBase2MathForSizes true

t 'Disable the warning on quit.'
+ disableWarnOnQuit true
