#!/usr/bin/env bash

source ./init.sh
source ./user-defaults/write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  Dock, Launchpad, and Mission Control
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.dock'

put 'Automatically hide and show the Dock.'
use autohide true

put 'Remove the delay for hiding/showing.'
use autohide-delay 0.0

put 'Remove the delay for hiding/showing in fullscreen mode.'
use autohide-fullscreen-delayed false

put 'Remove the animation when hiding/showing.'
use autohide-time-modifier 0.0

put 'Set magnification size to 80.'
use largesize 80.0
# Default: 128

put 'Change minimize/maximize window effect to suck mode.'
use mineffect 'suck'
# Possible values:
#   genie = Genie
#   scale = Scale
#   suck  = Suck

put 'Enable highlight hover effect for the grid view of a stack.'
use mouse-over-hilite-stack true

put 'Place the Dock in the bottom middle of the screen.'
use orientation 'bottom'
use pinning 'middle'

if ! we_have dockutil ; then
  put 'Wipe all persistent items from the Dock.'
  defaults delete com.apple.dock persistent-apps
  defaults delete com.apple.dock persistent-others

  # # Clear out the Dock.
  # dockutil --remove all
fi

put 'Disable indicator lights for open applications.'
use show-process-indicators false

put 'Make Dock icons of hidden applications translucent.'
use showhidden true

# put 'Reset Launchpad.'
# use ResetLaunchPad true

# put 'Disable the Launchpad gesture (pinch with thumb and three fingers).'
# use showLaunchpadGestureEnabled 0

put 'Show only running applications.'
use static-only true

put 'Set the icon size of Dock items.'
use tilesize 60
