#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Dock, Dashboard, Mission Control, Spaces, and Trackpad
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.dashboard'

put 'Enable Dashboard dev mode (allows keeping widgets on the desktop).'
use devmode true

# put 'Show the dashboard as an overlay.'
# use enabled-state 3

put 'Disable Dashboard.'
use mcx-disabled true

# ------------------------------------------------------------------------------

alias use='write_defaults com.apple.dock'

put 'Automatically hide and show the Dock.'
use autohide true

put 'Remove the delay for hiding/showing.'
use autohide-delay 0.0

put 'Remove the delay for hiding/showing in fullscreen mode.'
use autohide-fullscreen-delayed false

put 'Remove the animation when hiding/showing.'
use autohide-time-modifier 0.0

# t "Don’t show Dashboard as a Space."
# use dashboard-in-overlay true

put 'Enable spring loading for all Dock items.'
use enable-spring-load-actions-on-all-items true

put 'Speed up Mission Control animations.'
use expose-animation-duration 0.1

put 'Enable Mission Control to display full size previews.'
use expose-cluster-scale 1.0

put "Don't group windows by application in Mission Control (i.e. use the old Expose behavior instead)."
use expose-group-by-app false

put 'Disable the "mirror" effect.'
use hide-mirror true

# put 'Enable iTunes track notifications in the Dock.'
# use itunes-notifications true

put 'Set magnification size to 80.'
use largesize 80.0
# Default: 128

# # Don't animate opening applications from the Dock
# use launchanim false

put 'Change minimize/maximize window effect to suck mode.'
use mineffect 'suck'
# Possible values:
#   genie = Genie
#   scale = Scale
#   suck  = Suck

put "Do not minimize windows into their application’s icon."
use minimize-to-application false

put 'Enable highlight hover effect for the grid view of a stack.'
use mouse-over-hilite-stack true

put "Don't automatically rearrange Spaces based on most recent use."
use mru-spaces false

# put 'Enable 2D mode.'
# use no-glass true

# # put 'Always show the iTunes icon in the notifications pop-up beside the currently playing track.'
# use notification-always-show-image false

put 'Place the Dock in the bottom middle of the screen.'
use orientation 'bottom'
use pinning 'middle'

put 'Wipe all persistent items from the Dock.'
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others
# This is only really useful when setting up a new Mac,
# or if you don't use the Dock to launch apps.

put 'Reset Launchpad.'
use ResetLaunchPad true

put 'Disable indicator lights for open applications.'
use show-process-indicators false

put 'Make Dock icons of hidden applications translucent.'
use showhidden true

put 'Disable the Launchpad gesture (pinch with thumb and three fingers).'
use showLaunchpadGestureEnabled 0

put 'Show only running applications.'
use static-only true

put 'Set the icon size of Dock items.'
use tilesize 60

# put 'Stop from switching spaces due to an app coming to the foreground.'
# use workspaces-auto-swoosh false
# https://apple.stackexchange.com/a/4821

put 'Stop (slow down) from switching spaces if your mouse presses against the edge of the desktop.'
use workspaces-edge-delay true
# https://apple.stackexchange.com/a/4821

put 'Disable Spaces animation.'
use workspaces-swoosh-animation-off true

# # Clear out the Dock.
# dockutil --remove all

# dockutil --add /Applications/Safari.app
# dockutil --add /Applications/Firefox.app
# dockutil --add /Applications/Google\ Chrome.app

# put 'Display the location path of current wallpaper in OS X.'
# use desktop-picture-show-debug-text true

# # Hot corners
# # Possible values:
# #  0: no-op
# #  2: Mission Control
# #  3: Show application windows
# #  4: Desktop
# #  5: Start screen saver
# #  6: Disable screen saver
# #  7: Dashboard
# # 10: Put display to sleep
# # 11: Launchpad
# # 12: Notification Center

# put 'Set the top-left screen corner to Mission Control.'
# use wvous-tl-corner 2
# use wvous-tl-modifier 0

# put 'Set the top-right corner to Notification Center.'
# use wvous-tr-corner 12
# use wvous-tr-modifier 0

# put 'Set the bottom-left corner to Show Desktop.'
# use wvous-bl-corner 4    # Show Desktop
# use wvous-bl-modifier 0

# put "Setting bottom-right corner to Launchpad..."
# use wvous-br-corner 11   # Launchpad
# use wvous-br-modifier 0

# # Restart the Dock to apply the settings.
# killall Dock
