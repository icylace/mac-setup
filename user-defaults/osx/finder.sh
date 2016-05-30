#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                   Finder                    -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.finder'

t 'Display full POSIX path in the title bar.'
d _FXShowPosixPathInTitle true

t 'Show hidden files.'
d AppleShowAllFiles true

# t 'Hide Desktop icons.'
# d CreateDesktop false

t 'Disable window animations and Get Info animations.'
d DisableAllAnimations true

# t 'Empty Trash securely by default.'
# d EmptyTrashSecurely true

t 'When performing a search, search the current folder by default.'
d FXDefaultSearchScope 'SCcf'

t 'Disable the warning when changing a file extension.'
d FXEnableExtensionChangeWarning false

t 'Expand the following File Info panes: "General", "Open with", and "Sharing & Permissions"'
d FXInfoPanesExpanded -dict \
  General true \
  OpenWith true \
  Privileges true

t 'Use list view by default.'
d FXPreferredViewStyle 'Nlsv'
# Possible values:
# - Nlsv = List View
# - icnv = Icon View (default)
# - clmv = Column View
# - Flwv = Cover Flow View

t 'Set the Downloads folder as the default location for new Finder windows.'
d NewWindowTarget 'PfLo'
d NewWindowTargetPath "file://$HOME/Downloads"
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
d QLEnableTextSelection true

t 'Enable the menu option to quit Finder.'
d QuitMenuItem true
# Quitting Finder will also hide desktop icons.

t 'Show icons for hard drives, mounted servers, and removable media on the desktop.'
d ShowExternalHardDrivesOnDesktop true
d ShowHardDrivesOnDesktop true
d ShowMountedServersOnDesktop true
d ShowRemovableMediaOnDesktop true

t 'Show path bar.'
d ShowPathbar true

t 'Show status bar.'
d ShowStatusBar true

t 'Disable the warning before emptying the Trash.'
d WarnOnEmptyTrash false

# # Restart the Finder to apply the settings.
# killall Finder
