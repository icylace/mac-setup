#!/usr/bin/env bash

# ------------------------------------------------------------------------------
#  Set OS X defaults that I like.
# ------------------------------------------------------------------------------
#
# These settings are meant to be used on at least 10.9 (Mavericks).
#
# Use `defaults delete {domain} {key}` to undo settings.  For example, using:
# `defaults write com.apple.dock expose-animation-duration -float 0.1` can be
# using `defaults delete com.apple.dock expose-animation-duration`.
#
# Heavy influence and much copying from:
# - https://mths.be/osx
# - http://jasahackintosh.wordpress.com/2014/09/04/tweak-os-x-from-command-terminal/
# - http://lifehacker.com/how-to-make-your-own-bulk-app-installer-for-os-x-1586252163
# - http://macguide.org/
# - http://osxdaily.com/2010/02/15/disable-the-crash-reporter-dialog-in-mac-os-x/
# - http://osxdaily.com/2012/10/09/best-defaults-write-commands-mac-os-x/#comment-435634
# - http://secrets.blacktree.com/edit?id=238762
# - http://wp.secretnest.info/archives/3129
# - http://www.amsys.co.uk/2013/blog/how-to-enable-mission-control-to-display-full-size-previews/#.VKextGTF_yU
# - http://www.maclife.com/article/howtos/how-to-customize-dock
# - http://www.roaminggenius.com/blog/os-x-tip-resetting-launchpad-layout/
# - http://www.tekrevue.com/tip/the-complete-guide-to-customizing-mac-os-xs-dock-with-terminal/
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
#

# We're focusing on OS X so abort if we're not in OS X.
[[ $OSTYPE =~ ^darwin ]] || return 1

write_defaults() {
  if (( $# < 3 )) ; then
    echo "Error: write_defaults() needs more arguments" 1>&2
    return 1
  fi

  local domain=$1
  local key=$2
  local type_option
  local value
  local the_rest

  # Use any explicitly given type option.
  if (( $# > 3 )) ; then
    type_option="$3"
    shift 3
    if [[ $type_option =~ -(array(-add)?|dict(-add)?|data|date) ]] ; then
      for (( i=1 ; i <= $# ; i++ )) ; do
        value="$value\"${!i}\" "
      done
    else
      value=$@
    fi
  # Determine the type of the value.
  else
    value="$3"
    # http://stackoverflow.com/a/19116862/1935675
    if [ "$value" -eq "$value" ] 2>/dev/null ; then
      type_option='-int'
    elif [[ $value == true || $value == false ]] ; then
      type_option='-bool'
    elif [[ $value =~ ^[+-]?[0-9]+\.[0-9]+$ ]] ; then
      type_option='-float'
    else
      type_option='-string'
      value="\"$value\""
    fi
  fi

  defaults write "$domain" "$key" "$type_option" "$value"
}

# # Change the default backup periods in Time Machine.
# sudo defaults write /System/Library/Launch\ Daemons/com.apple.backupd-auto StartInterval -int 1800

# t 'Check for software updates daily, not just once per week.'
# defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# # Frequency is measured in days.

# t 'Disabling local Time Machine backups'
# hash tmutil &> /dev/null && sudo tmutil disablelocal

# t 'Display additional information on the login screen.'
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

# t 'Remove duplicates from the "Open With" menu.'
# /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user ; killall Finder
# # http://macguide.org/#Remove-Duplicates-from-the-Open-With-Menu

# t 'Re-index Spotlight.'
# sudo mdutil -E -p "/Volumes/Macintosh HD"
# # http://macguide.org/#Re-Index-Spotlight

# t 'Disabling local Time Machine backups.'
# hash tmutil &> /dev/null && sudo tmutil disablelocal

# t 'Reset Launchpad, but keep the desktop wallpaper intact.'
# find "$HOME/Library/Application Support/Dock" -name "*-*.db" -maxdepth 1 -delete


# t 'Disable sound effect on boot.'
# # http://osxdaily.com/2012/11/04/disable-mac-boot-chime/
# # https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# #
# # Why the sound effect is useful:
# # https://discussions.apple.com/message/16577746#16577746#16577746
# #
# # This no longer works in Yosemite.
# sudo nvram SystemAudioVolume=' '
# # To undo:
# # sudo nvram -d SystemAudioVolume


# t 'Disable Notification Center and remove the menu bar icon.'
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

# defaults write com.apple.iphoto MapScrollWheel -bool YES
# killall iPhoto

# t 'Enable the debug menu in Address Book.'
# defaults write com.apple.addressbook ABShowDebugMenu -bool true

# t 'Enable the debug menu in iCal.'
# defaults write com.apple.iCal IncludeDebugMenu -bool true

# t 'Add a message to the login screen.'
# sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Your Message"
# sudo defaults delete /Library/Preferences/com.apple.loginwindow LoginwindowText

# http://www.defaults-write.com/safari-highlight-non-retina-images/

# t 'Enable AirDrop over Ethernet and on unsupported Macs running Lion.'
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true


# ------------------------------------------------------------------------------
#  OS X settings.
# ------------------------------------------------------------------------------

if ! we_have defaults ; then
  red 'Error: `defaults` command is missing!'
  return 1
fi

for f in osx/*.sh ; do
  source "$f"
done

for f in apps/*.sh ; do
  source "$f"
done

e 'OS X defaults written. Note that some of these changes require a logout/restart to take effect.'
