#!/usr/bin/env bash

source ./init.sh
source ./user-defaults/write-defaults.sh

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

# # Change How Long (in seconds) Notification Banners Persist for in OS X
# defaults write com.apple.notificationcenterui bannerTime [time in seconds]

# # Set sleep (in minutes).
# sudo systemsetup -setcomputersleep 1
# sudo systemsetup -setdisplaysleep 1
# sudo systemsetup -setdisksleep 1

# # Set the timezone; see `sudo systemsetup -listtimezones` for other values
# sudo systemsetup -settimezone 'America/New_York' > /dev/null

put 'Display additional information on the login screen.'
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

put 'Add a message to the login screen.'
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Between the candle nd the star."

put 'Enable the debug menu in Address Book.'
defaults write com.apple.addressbook ABShowDebugMenu -bool true

put 'Disable tap to click (Trackpad).'
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false

put 'Reset Launchpad.'
defaults write com.apple.dock ResetLaunchPad -bool true

# https://macguide.org/#allow-apps-downloaded-from-anywhere
put 'Allow apps downloaded from anywhere.'
sudo spctl --master-disable

put "Always show the user's Library folder."
chflags nohidden "$HOME/Library/"

# ------------------------------------------------------------------------------

set_computer_name() {
  sudo scutil --set ComputerName "$1"
  sudo scutil --set HostName "$1"
  sudo scutil --set LocalHostName "$1"
  sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$1"
}
# set_computer_name 0xFF69B4
