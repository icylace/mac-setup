#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-               General System                -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults NSGlobalDomain'

t 'Disable menu bar transparency.'
d AppleEnableMenuBarTransparency false

# t 'Enable subpixel font rendering on non-Apple LCDs.'
# d AppleFontSmoothing 2

# t 'Set highlight color to green.'
# d AppleHighlightColor '0.764700 0.976500 0.568600'

t 'Enable Dark Mode in Yosemite.'
d AppleInterfaceStyle 'Dark'

t 'Enable full keyboard access (tab through all GUI buttons and fields, not just text boxes and lists).'
d AppleKeyboardUIMode 3

t 'Do not minimize the window when the title bar is double-clicked.'
d AppleMiniaturizeOnDoubleClick false

t 'Disable press-and-hold for keys in favor of key repeat.'
d ApplePressAndHoldEnabled false

t 'Show all file extensions.'
d AppleShowAllExtensions true

t 'Always show scrollbars.'
d AppleShowScrollBars 'Always'
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# t 'Activate special keyboard behavior with fn + funciton key instead of function key alone.'
# d com.apple.keyboard.fnState true

t 'Increasing mouse tracking to 3.'
d com.apple.mouse.scaling 3.0

t 'Disable feedback sound when changing volume.'
d com.apple.sound.beep.feedback false

t 'Remove the spring loading delay for directories.'
d com.apple.springing.delay 0.0

t 'Enable spring loading for directories.'
d com.apple.springing.enabled true

t 'Disable "natural" (touchscreen-style) scrolling.'
d com.apple.swipescrolldirection false

t 'Set mouse acceleration.'
d com.apple.mouse.scaling 0.875

t 'Set scroll wheel acceleration.'
d com.apple.scrollwheel.scaling 0.125

t 'Decrease the delay until keys are repeated.'
d InitialKeyRepeat 12

t 'Set a blazingly fast keyboard repeat rate.'
d KeyRepeat 0

t "Disable smart dashes as they're annoying when typing code."
d NSAutomaticDashSubstitutionEnabled false

t "Disable smart quotes as they're annoying when typing code."
d NSAutomaticQuoteSubstitutionEnabled false

t 'Disable window opening and closing animations.'
d NSAutomaticWindowAnimationsEnabled false

t 'Disable auto-correct.  Go to http://www.damnyouautocorrect.com/ to see why.'
d NSAutomaticSpellingCorrectionEnabled false

# t 'Making the scroll dragging speed faster.'
# d NSAutoscrollResponseMultiplier 3.0

# t 'Disable automatic termination of inactive apps.'
# d NSDisableAutomaticTermination true

t 'Save to disk (not to iCloud) by default.'
d NSDocumentSaveNewDocumentsToCloud false

# t 'Increase tooltip delay.'
# d NSInitialToolTipDelay 30000

t 'Expand the save panel by default.'
d NSNavPanelExpandedStateForSaveMode true
d NSNavPanelExpandedStateForSaveMode2 true

# t 'Disable "Resume" system-wide.'
# d NSQuitAlwaysKeepsWindows false

# t 'Disable smooth scrolling.'
# d NSScrollAnimationEnabled false
# # Uncomment if you’re on an older Mac that messes up the animation.

# t 'Set sidebar icon size to medium.'
# d NSTableViewDefaultSizeMode 2

t 'Display ASCII control characters using caret notation in standard text views.'
d NSTextShowsControlCharacters true
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`

t 'Set sidebar icon size to medium.'
d NSTableViewDefaultSizeMode 2

t 'For all applications change tabs with cmd-opt-arrow.'
d NSUserKeyEquivalents -dict-add 'Show Next Tab'       '@~\U2192'
d NSUserKeyEquivalents -dict-add 'Show Previous Tab'   '@~\U2190'
d NSUserKeyEquivalents -dict-add 'Select Next Tab'     '@~\U2192'
d NSUserKeyEquivalents -dict-add 'Select Previous Tab' '@~\U2190'
d NSUserKeyEquivalents -dict-add 'Next Tab'            '@~\U2192'
d NSUserKeyEquivalents -dict-add 'Previous Tab'        '@~\U2190'
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
d NSWindowResizeTime 0.01

t 'Expand the print panel by default.'
d PMPrintingExpandedStateForPrint true
d PMPrintingExpandedStateForPrint2 true

t 'Disable the animations for opening Quick Look windows.'
d QLPanelAnimationDuration 0.0

# t 'Increasing trackpad tracking to 3.'
# d com.apple.trackpad.scaling 3

t 'Add a context menu item for showing the Web Inspector in web views.'
d WebKitDeveloperExtras true
