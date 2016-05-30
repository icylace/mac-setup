#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                   Others                    -'
blue '-----------------------------------------------'
blue ''

t 'Disable infrared remote control.'
sudo defaults write /Library/Preferences/com.apple.driver.AppleIRController DeviceEnabled -bool false

t 'Turn Bluetooth off.'
sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0
sudo launchctl unload /System/Library/LaunchDaemons/com.apple.blued.plist
sudo launchctl load /System/Library/LaunchDaemons/com.apple.blued.plist

# t 'Disable tap-to-click for this user and for the login screen.'
# defaults -currentHost write com.apple.AppleMultitouchTrackpad Clicking -bool false
# defaults -currentHost write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false
# defaults write com.apple.AppleMultitouchTrackpad Clicking -bool false
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false

# t 'Trackpad: enable tap to click for this user and for the login screen'
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
# defaults -currentHost write -g com.apple.mouse.tapBehavior -int 1
# defaults write -g com.apple.mouse.tapBehavior -int 1

# t 'Enable ctrl key + scrolling for zoom in/out.'
# defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
# defaults write com.apple.AppleMultitouchTrackpad HIDScrollZoomModifierMask -int 262144
# defaults write com.apple.driver.
# AppleBluetoothMultitouch.trackpad HIDScrollZoomModifierMask -int 262144

# t 'Disable transparency in the menu bar and elsewhere on Yosemite.'
# defaults write com.apple.universalaccess reduceTransparency -bool true

t 'Enable the debug menu in Address Book.'
defaults write com.apple.addressbook ABShowDebugMenu -bool true

# t 'Disable the crash reporter.'
# defaults write com.apple.CrashReporter DialogType -string 'none'
# # Default: crashreport

t 'Avoid creating .DS_Store files on network volumes.'
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# http://support.apple.com/en-us/ht1629
# http://www.chrisnovoa.com/os-x-lion-ds_store-disabling/
# http://www.defaults-write.com/disable-the-creation-of-ds_store-files/
# http://apple.stackexchange.com/questions/107969/single-purpose-app-to-prevent-ds-store-creation-under-mavericks#comment126770_108064
# https://www.aorensoftware.com/blog/2011/12/24/death-to-ds_store/

t 'Enable the debug menu in Disk Utility.'
defaults write com.apple.DiskUtility advanced-image-options -bool true
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true

t 'Disable tap to click (Trackpad).'
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false

t 'Map bottom right Trackpad corner to right-click.'
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

# t 'Increase sound quality for Bluetooth headphones/headsets.'
# defaults write com.apple.BluetoothAudioAgent 'Apple Bitpool Min (editable)' -int 40

# t 'Disable disk image verification for quicker mounting.'
# defaults write com.apple.frameworks.diskimages skip-verify -bool true
# defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
# defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# t 'Automatically open a new Finder window when a volume is mounted.'
# defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
# defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
# defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

t 'Set Help Viewer windows to non-floating mode.'
defaults write com.apple.helpviewer DevMode -bool true

t 'Disable the “Are you sure you want to open this application?” dialog.'
defaults write com.apple.LaunchServices LSQuarantine -bool false

# # Disable the "reopen windows when logging back in" option
# # This works, although the checkbox will still appear to be checked.
# defaults write com.apple.loginwindow TALLogoutSavesState -bool false
# defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false

t 'Show remaining battery time.'
defaults write com.apple.menuextra.battery ShowTime -string 'YES'

t 'Hide remaining battery percentage.'
defaults write com.apple.menuextra.battery ShowPercent -string 'NO'

t 'Use a digital clock with a non-flashing separator.'
defaults write com.apple.menuextra.clock FlashDateSeparator -bool false
defaults write com.apple.menuextra.clock IsAnalog -bool false

# t 'Remove the User and Bluetooth entries from the menu bar.'
# defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Volume.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

# t "Disable smart quotes as it's annoying for messages that contain code."
# defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

# t 'Disable continuous spell checking.'
# defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

t 'Automatically quit printer app once the print jobs complete.'
defaults write com.apple.print.PrintingPrefs 'Quit When Finished' -bool true

t 'Disable auto-save in AppleScript Editor.'
defaults write com.apple.ScriptEditor2 ApplePersistence -bool false

t 'Prevent Time Machine from prompting to use new hard drives as a backup volume.'
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# t 'Disable Notification Center.'
# defaults write /System/Library/LaunchAgents/com.apple.notificationcenterui KeepAlive -bool false

# t 'Restart Notification Center to apply the settings.'
# killall NotificationCenter

# t "Don’t blink the cursor caret (value is in milliseconds)."
# defaults write -g NSTextInsertionPointBlinkPeriod -int 9999999999999999

# t 'Use a lighter text rendering style.'
# defaults write -g AppleFontSmoothing -int 1
# # http://osxdaily.com/2012/10/09/best-defaults-write-commands-mac-os-x/#comment-435634

# t 'Disable auto-save in AppleScript Editor.'
# defaults write com.apple.ScriptEditor2 ApplePersistence -bool false
# # http://osxdaily.com/2012/10/09/best-defaults-write-commands-mac-os-x/#comment-435634

# t 'Menu bar: hide the Time Machine, Volume, and User icons'
# for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
#   defaults write "${domain}" dontAutoLoad -array \
#     '/System/Library/CoreServices/Menu Extras/TimeMachine.menu' \
#     '/System/Library/CoreServices/Menu Extras/Volume.menu' \
#     '/System/Library/CoreServices/Menu Extras/User.menu'
# done

# defaults write com.apple.systemuiserver menuExtras -array \
#   '/System/Library/CoreServices/Menu Extras/Bluetooth.menu' \
#   '/System/Library/CoreServices/Menu Extras/AirPort.menu' \
#   '/System/Library/CoreServices/Menu Extras/Battery.menu' \
#   '/System/Library/CoreServices/Menu Extras/Clock.menu'
