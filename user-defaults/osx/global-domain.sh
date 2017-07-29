#!/usr/bin/env bash

blue '
-----------------------------------------------
-               General System                -
-----------------------------------------------
'

alias +='write_defaults NSGlobalDomain'

t 'Disable menu bar transparency.'
+ AppleEnableMenuBarTransparency false

# t 'Enable subpixel font rendering on non-Apple LCDs.'
# + AppleFontSmoothing 2

# t 'Set highlight color to green.'
# + AppleHighlightColor '0.764700 0.976500 0.568600'

t 'Enable Dark Mode in Yosemite.'
+ AppleInterfaceStyle 'Dark'

t 'Enable full keyboard access (tab through all GUI buttons and fields, not just text boxes and lists).'
+ AppleKeyboardUIMode 3

t 'Do not minimize the window when the title bar is double-clicked.'
+ AppleMiniaturizeOnDoubleClick false

t 'Disable press-and-hold for keys in favor of key repeat.'
+ ApplePressAndHoldEnabled false

t 'Show all file extensions.'
+ AppleShowAllExtensions true

t 'Always show scrollbars.'
+ AppleShowScrollBars 'Always'
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# t 'Activate special keyboard behavior with fn + funciton key instead of function key alone.'
# + com.apple.keyboard.fnState true

t 'Increasing mouse tracking to 3.'
+ com.apple.mouse.scaling 3.0

t 'Disable feedback sound when changing volume.'
+ com.apple.sound.beep.feedback false

t 'Remove the spring loading delay for directories.'
+ com.apple.springing.delay 0.0

t 'Enable spring loading for directories.'
+ com.apple.springing.enabled true

t 'Disable "natural" (touchscreen-style) scrolling.'
+ com.apple.swipescrolldirection false

t 'Set mouse acceleration.'
+ com.apple.mouse.scaling 0.875

t 'Set scroll wheel acceleration.'
+ com.apple.scrollwheel.scaling 0.125

# In macOS Sierra you can unplug and replug your external keyboard in for the
# new keyboard-related values to take effect, no reboot required.
# Known to work for: InitialKeyRepeat, KeyRepeat
# https://github.com/mathiasbynens/dotfiles/issues/687#issuecomment-300072305

t 'Decrease the delay until keys are repeated.'
+ InitialKeyRepeat 10

t 'Set a fast keyboard repeat rate.'
+ KeyRepeat 1

t "Disable smart dashes as they're annoying when typing code."
+ NSAutomaticDashSubstitutionEnabled false

t "Disable smart quotes as they're annoying when typing code."
+ NSAutomaticQuoteSubstitutionEnabled false

t 'Disable window opening and closing animations.'
+ NSAutomaticWindowAnimationsEnabled false

t 'Disable auto-correct.  Go to http://www.damnyouautocorrect.com/ to see why.'
+ NSAutomaticSpellingCorrectionEnabled false

# t 'Making the scroll dragging speed faster.'
# + NSAutoscrollResponseMultiplier 3.0

# t 'Disable automatic termination of inactive apps.'
# + NSDisableAutomaticTermination true

t 'Save to disk (not to iCloud) by default.'
+ NSDocumentSaveNewDocumentsToCloud false

# t 'Increase tooltip delay.'
# + NSInitialToolTipDelay 30000

t 'Expand the save panel by default.'
+ NSNavPanelExpandedStateForSaveMode true
+ NSNavPanelExpandedStateForSaveMode2 true

# t 'Disable "Resume" system-wide.'
# + NSQuitAlwaysKeepsWindows false

# t 'Disable smooth scrolling.'
# + NSScrollAnimationEnabled false
# # Uncomment if you’re on an older Mac that messes up the animation.

# t 'Set sidebar icon size to medium.'
# + NSTableViewDefaultSizeMode 2

t 'Display ASCII control characters using caret notation in standard text views.'
+ NSTextShowsControlCharacters true
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`

t 'Set sidebar icon size to medium.'
+ NSTableViewDefaultSizeMode 2

t 'For all applications change tabs with cmd-opt-arrow.'
+ NSUserKeyEquivalents -dict-add 'Show Next Tab'       '@~\U2192'
+ NSUserKeyEquivalents -dict-add 'Show Previous Tab'   '@~\U2190'
+ NSUserKeyEquivalents -dict-add 'Select Next Tab'     '@~\U2192'
+ NSUserKeyEquivalents -dict-add 'Select Previous Tab' '@~\U2190'
+ NSUserKeyEquivalents -dict-add 'Next Tab'            '@~\U2192'
+ NSUserKeyEquivalents -dict-add 'Previous Tab'        '@~\U2190'
#
# Keyboard shortcuts modifier key legend:
#   @ = command
#   ^ = control
#   ~ = option
#   $ = shift
#
# NOTE:
# These shortcuts will not show in System Preferences
# and setting new shortcuts there will overwrite these.
#

t 'Increase window resize speed for Cocoa applications.'
+ NSWindowResizeTime 0.01

t 'Expand the print panel by default.'
+ PMPrintingExpandedStateForPrint true
+ PMPrintingExpandedStateForPrint2 true

t 'Disable the animations for opening Quick Look windows.'
+ QLPanelAnimationDuration 0.0

# t 'Increasing trackpad tracking to 3.'
# + com.apple.trackpad.scaling 3

t 'Add a context menu item for showing the Web Inspector in web views.'
+ WebKitDeveloperExtras true
