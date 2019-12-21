#!/usr/bin/env bash

# TODO:
# - do these still work with Path Finder 9 ?

blue '
+-------------------------------------------------------------------------------
:  Path Finder
:  File manager.
:  https://cocoatech.com/
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.cocoatech.PathFinder'

put 'Set the text editor to use.'
use textEditorApplicationPath "'$(readlink $HOME/Applications/Sublime\ Text.app)'"

put 'Set the terminal emulator to use.'
use kTerminalApplicationPath "'$(readlink $HOME/Applications/iTerm.app)'"

put 'Make Path Finder the default file viewer.'
use pathFinderIsDefaultFileViewer true

put 'Set the default folder.'
use kNTDefaultTabPath "$HOME"

put 'Make sure files are copied correctly.'
use NTVerifyCopiedFiles true

put 'Use Base-2 math for file sizes.'
use useBase2MathForSizes true

put 'Disable the warning on quit.'
use disableWarnOnQuit true
