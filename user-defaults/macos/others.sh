#!/usr/bin/env bash

source ../../init.sh
source ../write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  Others
+ - - - - - - - - - - - - - - - - - - - -
'

# put 'Disable tap-to-click for this user and for the login screen.'
# defaults -currentHost write com.apple.AppleMultitouchTrackpad Clicking -bool false
# defaults -currentHost write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false
# defaults write com.apple.AppleMultitouchTrackpad Clicking -bool false
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false

# put "Disable smart quotes as it's annoying for messages that contain code."
# defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

# put "Don't blink the cursor caret (value is in milliseconds)."
# defaults write -g NSTextInsertionPointBlinkPeriod -int 9999999999999999

put 'Enable the debug menu in Address Book.'
defaults write com.apple.addressbook ABShowDebugMenu -bool true

put 'Enable the debug menu in Disk Utility.'
defaults write com.apple.DiskUtility advanced-image-options -bool true
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true

put 'Disable tap to click (Trackpad).'
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false








# # Change How Long (in seconds) Notification Banners Persist for in OS X
# defaults write com.apple.notificationcenterui bannerTime [time in seconds]

# # Set sleep (in minutes).
# sudo systemsetup -setcomputersleep 1
# sudo systemsetup -setdisplaysleep 1
# sudo systemsetup -setdisksleep 1

# # Set the timezone; see `sudo systemsetup -listtimezones` for other values
# sudo systemsetup -settimezone 'America/New_York' > /dev/null

# ------------------------------------------------------------------------------

set_computer_name() {
  sudo scutil --set ComputerName "$1"
  sudo scutil --set HostName "$1"
  sudo scutil --set LocalHostName "$1"
  sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$1"
}

set_computer_name 0xFF69B4

# ------------------------------------------------------------------------------

put "Always show the user's Library folder."
chflags nohidden "$HOME/Library/"

put 'Enabling dark mode.'
defaults write /Library/Preferences/.GlobalPreferences AppleInterfaceTheme Dark

put 'Reset Launchpad.'
defaults write com.apple.dock ResetLaunchPad -bool true

put 'Enable the debug menu in Address Book.'
defaults write com.apple.addressbook ABShowDebugMenu -bool true

put 'Enable the debug menu in iCal.'
defaults write com.apple.iCal IncludeDebugMenu -bool true

# put 'Display additional information on the login screen.'
# sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# put 'Add a message to the login screen.'
# sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Your Message"
# sudo defaults delete /Library/Preferences/com.apple.loginwindow LoginwindowText
