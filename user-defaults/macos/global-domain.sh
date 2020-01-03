#!/usr/bin/env bash

source ./init.sh
source ./user-defaults/write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  General System
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults NSGlobalDomain'

# put 'Set highlight color to green.'
# use AppleHighlightColor '0.764700 0.976500 0.568600'

# put 'Set mouse acceleration.'
# use com.apple.mouse.scaling 0.875

# put 'Set scroll wheel acceleration.'
# use com.apple.scrollwheel.scaling 0.125

# In macOS Sierra you can unplug and replug your external keyboard in for the
# new keyboard-related values to take effect, no reboot required.
# Known to work for: InitialKeyRepeat, KeyRepeat
# https://github.com/mathiasbynens/dotfiles/issues/687#issuecomment-300072305

# put 'Decrease the delay until keys are repeated.'
# use InitialKeyRepeat 10

# put 'Set a fast keyboard repeat rate.'
# use KeyRepeat 1

# put 'Making the scroll dragging speed faster.'
# use NSAutoscrollResponseMultiplier 3.0

# put 'Increase tooltip delay.'
# use NSInitialToolTipDelay 30000

# put 'Set sidebar icon size to medium.'
# use NSTableViewDefaultSizeMode 2

# put 'Increasing trackpad tracking to 3.'
# use com.apple.trackpad.scaling 3

put 'Enable Dark Mode.'
use AppleInterfaceStyle 'Dark'

put 'Enable full keyboard access (tab through all GUI buttons and fields, not just text boxes and lists).'
use AppleKeyboardUIMode 3

put 'Do not minimize the window when the title bar is double-clicked.'
use AppleMiniaturizeOnDoubleClick false

put 'Disable press-and-hold for keys in favor of key repeat.'
use ApplePressAndHoldEnabled false

put 'Show all file extensions.'
use AppleShowAllExtensions true

put 'Always show scrollbars.'
use AppleShowScrollBars 'Always'
# Possible values: `WhenScrolling`, `Automatic`, and `Always`

put 'Increasing mouse tracking to 3.'
use com.apple.mouse.scaling 3.0

put 'Disable feedback sound when changing volume.'
use com.apple.sound.beep.feedback false

put 'Remove the spring loading delay for directories.'
use com.apple.springing.delay 0.0

put 'Enable spring loading for directories.'
use com.apple.springing.enabled true

put 'Disable "natural" (touchscreen-style) scrolling.'
use com.apple.swipescrolldirection false

put "Disable smart dashes as they're annoying when typing code."
use NSAutomaticDashSubstitutionEnabled false

put "Disable smart quotes as they're annoying when typing code."
use NSAutomaticQuoteSubstitutionEnabled false

put 'Disable window opening and closing animations.'
use NSAutomaticWindowAnimationsEnabled false

put 'Disable auto-correct. Go to http://damnyouautocorrect.com/ to see why.'
use NSAutomaticSpellingCorrectionEnabled false

put 'Expand the save panel by default.'
use NSNavPanelExpandedStateForSaveMode true
use NSNavPanelExpandedStateForSaveMode2 true

put 'Display ASCII control characters using caret notation in standard text views.'
use NSTextShowsControlCharacters true
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`

put 'Set sidebar icon size to medium.'
use NSTableViewDefaultSizeMode 2

put 'For all applications change tabs with cmd-opt-arrow.'
use NSUserKeyEquivalents -dict-add 'Show Next Tab'       '@~\U2192'
use NSUserKeyEquivalents -dict-add 'Show Previous Tab'   '@~\U2190'
use NSUserKeyEquivalents -dict-add 'Select Next Tab'     '@~\U2192'
use NSUserKeyEquivalents -dict-add 'Select Previous Tab' '@~\U2190'
use NSUserKeyEquivalents -dict-add 'Next Tab'            '@~\U2192'
use NSUserKeyEquivalents -dict-add 'Previous Tab'        '@~\U2190'
#
# Keyboard shortcuts modifier key legend:
#   @ = command
#   ^ = control
#   ~ = option
#   $ = shift
#
# NOTE: These shortcuts will not show in System Preferences and setting new shortcuts there will overwrite these.
#

put 'Increase window resize speed for Cocoa applications.'
use NSWindowResizeTime 0.01

put 'Expand the print panel by default.'
use PMPrintingExpandedStateForPrint true
use PMPrintingExpandedStateForPrint2 true

put 'Disable the animations for opening Quick Look windows.'
use QLPanelAnimationDuration 0.0

put 'Add a context menu item for showing the Web Inspector in web views.'
use WebKitDeveloperExtras true
