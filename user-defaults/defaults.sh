#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Set macOS defaults and macOS application defaults.
+ - - - - - - - - - - - - - - - - - - - -
'

# These settings are meant to be used on at least 10.9 (Mavericks).
#
# Use `defaults delete {domain} {key}` to undo settings.  For example, using:
# `defaults write com.apple.dock expose-animation-duration -float 0.1` can be
# using `defaults delete com.apple.dock expose-animation-duration`.
#
# Heavy influence and much copying from:
# - http://osxdaily.com/2010/02/15/disable-the-crash-reporter-dialog-in-mac-os-x/
# - http://osxdaily.com/2012/10/09/best-defaults-write-commands-mac-os-x/#comment-435634
# - https://gist.github.com/nicerobot/1193218
# - https://gist.github.com/zenspider/8ee55e7c00b9201dd84f
# - https://github.com/divio/osx-bootstrap/blob/master/core/defaults.sh
# - https://github.com/eolamey/dotfiles/blob/master/misc/osx-defaults
# - https://github.com/mathiasbynens/dotfiles/pull/306/files
# - https://github.com/mikker/dotfiles/blob/master/osx
# - https://github.com/RStankov/config_files/blob/master/dot/osx
# - https://github.com/trusche/dotfiles/blob/master/osx
# - https://github.com/virtualswede/osx-bootstrap
# - https://github.com/ymendel/dotfiles/tree/master/osx
# - https://jasahackintosh.wordpress.com/2014/09/04/tweak-os-x-from-command-terminal/
# - https://lifehacker.com/how-to-make-your-own-bulk-app-installer-for-os-x-1586252163
# - https://macguide.org/
# - https://mths.be/osx
# - https://wp.secretnest.info/archives/3129
# - https://www.amsys.co.uk/how-to-enable-mission-control-to-display-full-size-previews/#.VKextGTF_yU
# - https://www.tekrevue.com/tip/the-complete-guide-to-customizing-mac-os-xs-dock-with-terminal/

# TODO: consider these
# https://macguide.org/#allow-apps-downloaded-from-anywhere

source ./write-defaults.sh

# # Change the default backup periods in Time Machine.
# sudo defaults write /System/Library/Launch\ Daemons/com.apple.backupd-auto StartInterval -int 1800

# put 'Check for software updates daily, not just once per week.'
# defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# # Frequency is measured in days.

# put 'Disabling local Time Machine backups'
# hash tmutil &> /dev/null && sudo tmutil disablelocal

# put 'Display additional information on the login screen.'
# sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# # # Change How Long (in seconds) Notification Banners Persist for in OS X
# # defaults write com.apple.notificationcenterui bannerTime [time in seconds]

# # Set sleep (in minutes).
# sudo systemsetup -setcomputersleep 1
# sudo systemsetup -setdisplaysleep 1
# sudo systemsetup -setdisksleep 1

# # Set the timezone; see `sudo systemsetup -listtimezones` for other values
# sudo systemsetup -settimezone 'America/New_York' > /dev/null

# # if [ "$OSTYPE" = darwin14* ] ; then
# #   t 'Enabling dark mode.'
# #   defaults write /Library/Preferences/.GlobalPreferences AppleInterfaceTheme Dark
# # else
# #   t 'Not Yosemite.'
# # fi


# ------------------------------------------------------------------------------


# Hidden wallpapers.
# /Library/Screen Savers/Default Collections

# # Set the computer name.
# COMPUTER_NAME="0xFF69B4"
# sudo scutil --set ComputerName COMPUTER_NAME
# sudo scutil --set HostName COMPUTER_NAME
# sudo scutil --set LocalHostName COMPUTER_NAME
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string COMPUTER_NAME

# Always show the user's Library folder.
chflags nohidden "$HOME/Library/"

# put 'Remove duplicates from the "Open With" menu.'
# /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user ; killall Finder
# # https://macguide.org/#Remove-Duplicates-from-the-Open-With-Menu

# put 'Re-index Spotlight.'
# sudo mdutil -E -p "/Volumes/Macintosh HD"
# # https://macguide.org/#Re-Index-Spotlight

# put 'Disabling local Time Machine backups.'
# hash tmutil &> /dev/null && sudo tmutil disablelocal

# put 'Reset Launchpad, but keep the desktop wallpaper intact.'
# find "$HOME/Library/Application Support/Dock" -name "*-*.db" -maxdepth 1 -delete

# put 'Disable Notification Center and remove the menu bar icon.'
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

# defaults write com.apple.iphoto MapScrollWheel -bool YES
# killall iPhoto

# put 'Enable the debug menu in Address Book.'
# defaults write com.apple.addressbook ABShowDebugMenu -bool true

# put 'Enable the debug menu in iCal.'
# defaults write com.apple.iCal IncludeDebugMenu -bool true

# put 'Add a message to the login screen.'
# sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Your Message"
# sudo defaults delete /Library/Preferences/com.apple.loginwindow LoginwindowText

# https://www.defaults-write.com/safari-highlight-non-retina-images/

# put 'Enable AirDrop over Ethernet and on unsupported Macs running Lion.'
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true


# ------------------------------------------------------------------------------
#  macOS settings.
# ------------------------------------------------------------------------------

if ! we_have defaults ; then
  red 'Error: `defaults` command is missing!'
  return 1
fi

for f in macos/*.sh ; do
  source "$f"
done

for f in apps/*.sh ; do
  source "$f"
done

e 'macOS defaults written.'
e 'Some of these changes require a logout/restart to take effect.'
