#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  cDock
:
:  Note: cDock requires System Integrity Protection to be disabled
:        for it to work properly.
+ - - - - - - - - - - - - - - - - - - - -
'

# cDock
# Dock customizer.
# https://w0lfschild.github.io/app_cDock
# https://github.com/w0lfschild/cDock2/issues/2#issuecomment-201718867
brew cask install cdock

# csrutil status

# Only available in Recovery OS.
# csrutil disable
