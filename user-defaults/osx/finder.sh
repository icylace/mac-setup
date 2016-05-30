#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                   Finder                    -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults com.apple.finder'

t 'Display full POSIX path in the title bar.'
+ _FXShowPosixPathInTitle true

t 'Show hidden files.'
+ AppleShowAllFiles true

# t 'Hide Desktop icons.'
# + CreateDesktop false

t 'Disable window animations and Get Info animations.'
+ DisableAllAnimations true

# t 'Empty Trash securely by default.'
# + EmptyTrashSecurely true

t 'When performing a search, search the current folder by default.'
+ FXDefaultSearchScope 'SCcf'

t 'Disable the warning when changing a file extension.'
+ FXEnableExtensionChangeWarning false

t 'Expand the following File Info panes: "General", "Open with", and "Sharing & Permissions"'
+ FXInfoPanesExpanded -dict \
  General true \
  OpenWith true \
  Privileges true

t 'Use list view by default.'
+ FXPreferredViewStyle 'Nlsv'
# Possible values:
# - Nlsv = List View
# - icnv = Icon View (default)
# - clmv = Column View
# - Flwv = Cover Flow View

t 'Set the Downloads folder as the default location for new Finder windows.'
+ NewWindowTarget 'PfLo'
+ NewWindowTargetPath "file://$HOME/Downloads"
# Possible values:
# https://github.com/mathiasbynens/dotfiles/pull/285#issuecomment-31608378
# Description  - NewWindowTarget - NewWindowTargetPath
# Computer     - PfCm - None
# Volume       - PfVo - file:///
# Home         - PfHm - file://${HOME}/
# Desktop      - PfDe - file://${HOME}/Desktop/
# Documents    - PfDo - file://${HOME}/Documents/
# All My Files - PfAF - file:///System/Library/CoreServices/Finder.app/Contents/Resources/MyLibraries/myDocuments.cannedSearch
# Other path   - PfLo - file:///full/path/here/

t 'Enable text selection in the Quick Look window.'
+ QLEnableTextSelection true

t 'Enable the menu option to quit Finder.'
+ QuitMenuItem true
# Quitting Finder will also hide desktop icons.

t 'Show icons for hard drives, mounted servers, and removable media on the desktop.'
+ ShowExternalHardDrivesOnDesktop true
+ ShowHardDrivesOnDesktop true
+ ShowMountedServersOnDesktop true
+ ShowRemovableMediaOnDesktop true

t 'Show path bar.'
+ ShowPathbar true

t 'Show status bar.'
+ ShowStatusBar true

t 'Disable the warning before emptying the Trash.'
+ WarnOnEmptyTrash false

# # Restart the Finder to apply the settings.
# killall Finder
