#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Dock, Dashboard, Mission Control, Spaces, and Trackpad
+ - - - - - - - - - - - - - - - - - - - -
'

alias +='write_defaults com.apple.dashboard'

t 'Enable Dashboard dev mode (allows keeping widgets on the desktop).'
+ devmode true

# t 'Show the dashboard as an overlay.'
# + enabled-state 3

t 'Disable Dashboard.'
+ mcx-disabled true

# ------------------------------------------------------------------------------

alias +='write_defaults com.apple.dock'

t 'Automatically hide and show the Dock.'
+ autohide true

t 'Remove the delay for hiding/showing.'
+ autohide-delay 0.0

t 'Remove the delay for hiding/showing in fullscreen mode.'
+ autohide-fullscreen-delayed false

t 'Remove the animation when hiding/showing.'
+ autohide-time-modifier 0.0

# t "Don’t show Dashboard as a Space."
# + dashboard-in-overlay true

t 'Enable spring loading for all Dock items.'
+ enable-spring-load-actions-on-all-items true

t 'Speed up Mission Control animations.'
+ expose-animation-duration 0.1

t 'Enable Mission Control to display full size previews.'
+ expose-cluster-scale 1.0

t "Don't group windows by application in Mission Control (i.e. use the old Expose behavior instead)."
+ expose-group-by-app false

t 'Disable the "mirror" effect.'
+ hide-mirror true

# t 'Enable iTunes track notifications in the Dock.'
# + itunes-notifications true

t 'Set magnification size to 80.'
+ largesize 80.0
# Default: 128

# # Don’t animate opening applications from the Dock
# + launchanim false

t 'Change minimize/maximize window effect to suck mode.'
+ mineffect 'suck'
# Possible values:
#   genie = Genie
#   scale = Scale
#   suck  = Suck

t "Do not minimize windows into their application’s icon."
+ minimize-to-application false

t 'Enable highlight hover effect for the grid view of a stack.'
+ mouse-over-hilite-stack true

t "Don't automatically rearrange Spaces based on most recent use."
+ mru-spaces false

# t 'Enable 2D mode.'
# + no-glass true

# # t 'Always show the iTunes icon in the notifications pop-up beside the currently playing track.'
# + notification-always-show-image false

t 'Place the Dock in the bottom middle of the screen.'
+ orientation 'bottom'
+ pinning 'middle'

t 'Wipe all persistent items from the Dock.'
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others
# This is only really useful when setting up a new Mac,
# or if you don't use the Dock to launch apps.

# TODO
# - is this still necessary?
t 'Reset Launchpad.  Pre-Yosemite.'
[ -e $HOME/Library/Application\ Support/Dock/*.db ] && rm $HOME/Library/Application\ Support/Dock/*.db

t 'Reset Launchpad.  Yosemite.'
+ ResetLaunchPad true

t 'Disable indicator lights for open applications.'
+ show-process-indicators false

t 'Make Dock icons of hidden applications translucent.'
+ showhidden true

t 'Disable the Launchpad gesture (pinch with thumb and three fingers).'
+ showLaunchpadGestureEnabled 0

# t 'Enable single-app mode.'
# + single-app true
# # Single-app mode means if you click a Dock icon then every other app is hidden.

t 'Show only running applications.'
+ static-only true

t 'Set the icon size of Dock items.'
+ tilesize 60

# t 'Stop from switching spaces due to an app coming to the foreground.'
# + workspaces-auto-swoosh false
# # http://apple.stackexchange.com/a/4821

t 'Stop (slow down) from switching spaces if your mouse presses against the edge of the desktop.'
+ workspaces-edge-delay true
# http://apple.stackexchange.com/a/4821

t 'Disable Spaces animation.'
+ workspaces-swoosh-animation-off true

# # Clear out the Dock.
# /usr/bin/dockutil --remove all

# /usr/bin/dockutil --add /Applications/Safari.app
# /usr/bin/dockutil --add /Applications/Firefox.app
# /usr/bin/dockutil --add /Applications/Google\ Chrome.app

# t 'Display the location path of current wallpaper in OS X.'
# + desktop-picture-show-debug-text true

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

# t 'Set the top-left screen corner to Mission Control.'
# + wvous-tl-corner 2
# + wvous-tl-modifier 0

# t 'Set the top-right corner to Notification Center.'
# + wvous-tr-corner 12
# + wvous-tr-modifier 0

# t 'Set the bottom-left corner to Show Desktop.'
# + wvous-bl-corner 4    # Show Desktop
# + wvous-bl-modifier 0

# t "Setting bottom-right corner to Launchpad..."
# + wvous-br-corner 11   # Launchpad
# + wvous-br-modifier 0

# # Restart the Dock to apply the settings.
# killall Dock
