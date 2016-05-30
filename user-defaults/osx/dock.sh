#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-      Dock, Dashboard, Mission Control       -'
blue '-            Spaces, and Trackpad             -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.dashboard'

t 'Enable Dashboard dev mode (allows keeping widgets on the desktop).'
d devmode true

# t 'Show the dashboard as an overlay.'
# d enabled-state 3

t 'Disable Dashboard.'
d mcx-disabled true

# ------------------------------------------------------------------------------

alias d='write_defaults com.apple.dock'

t 'Automatically hide and show the Dock.'
d autohide true

t 'Remove the delay for hiding/showing.'
d autohide-delay 0.0

t 'Remove the delay for hiding/showing in fullscreen mode.'
d autohide-fullscreen-delayed false

t 'Remove the animation when hiding/showing.'
d autohide-time-modifier 0.0

# t "Don’t show Dashboard as a Space."
# d dashboard-in-overlay true

t 'Enable spring loading for all Dock items.'
d enable-spring-load-actions-on-all-items true

t 'Speed up Mission Control animations.'
d expose-animation-duration 0.1

t 'Enable Mission Control to display full size previews.'
d expose-cluster-scale 1.0

t "Don't group windows by application in Mission Control (i.e. use the old Expose behavior instead)."
d expose-group-by-app false

t 'Disable the "mirror" effect.'
d hide-mirror true

# t 'Enable iTunes track notifications in the Dock.'
# d itunes-notifications true

t 'Set magnification size to 80.'
d largesize 80.0
# Default: 128

# # Don’t animate opening applications from the Dock
# d launchanim false

t 'Change minimize/maximize window effect to suck mode.'
d mineffect 'suck'
# Possible values:
#   genie = Genie
#   scale = Scale
#   suck  = Suck

t "Do not minimize windows into their application’s icon."
d minimize-to-application false

t 'Enable highlight hover effect for the grid view of a stack.'
d mouse-over-hilite-stack true

t "Don't automatically rearrange Spaces based on most recent use."
d mru-spaces false

# t 'Enable 2D mode.'
# d no-glass true

# # t 'Always show the iTunes icon in the notifications pop-up beside the currently playing track.'
# d notification-always-show-image false

t 'Place the Dock in the bottom middle of the screen.'
d orientation 'bottom'
d pinning 'middle'

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
d ResetLaunchPad true

t 'Disable indicator lights for open applications.'
d show-process-indicators false

t 'Make Dock icons of hidden applications translucent.'
d showhidden true

t 'Disable the Launchpad gesture (pinch with thumb and three fingers).'
d showLaunchpadGestureEnabled 0

# t 'Enable single-app mode.'
# d single-app true
# # Single-app mode means if you click a Dock icon then every other app is hidden.

t 'Show only running applications.'
d static-only true

t 'Set the icon size of Dock items.'
d tilesize 60

# t 'Stop from switching spaces due to an app coming to the foreground.'
# d workspaces-auto-swoosh false
# # http://apple.stackexchange.com/a/4821

t 'Stop (slow down) from switching spaces if your mouse presses against the edge of the desktop.'
d workspaces-edge-delay true
# http://apple.stackexchange.com/a/4821

t 'Disable Spaces animation.'
d workspaces-swoosh-animation-off true

# # Clear out the Dock.
# /usr/bin/dockutil --remove all

# /usr/bin/dockutil --add /Applications/Safari.app
# /usr/bin/dockutil --add /Applications/Firefox.app
# /usr/bin/dockutil --add /Applications/Google\ Chrome.app

# t 'Display the location path of current wallpaper in OS X.'
# d desktop-picture-show-debug-text true

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
# d wvous-tl-corner 2
# d wvous-tl-modifier 0

# t 'Set the top-right corner to Notification Center.'
# d wvous-tr-corner 12
# d wvous-tr-modifier 0

# t 'Set the bottom-left corner to Show Desktop.'
# d wvous-bl-corner 4    # Show Desktop
# d wvous-bl-modifier 0

# t "Setting bottom-right corner to Launchpad..."
# d wvous-br-corner 11   # Launchpad
# d wvous-br-modifier 0

# # Restart the Dock to apply the settings.
# killall Dock
