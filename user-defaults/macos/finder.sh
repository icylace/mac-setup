#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Finder
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.finder'

put 'Display full POSIX path in the title bar.'
use _FXShowPosixPathInTitle true

put 'Show hidden files.'
use AppleShowAllFiles true

put 'Disable window animations and "Get Info" animations.'
use DisableAllAnimations true

# put 'Empty Trash securely by default.'
# use EmptyTrashSecurely true

put 'When performing a search, search the current folder by default.'
use FXDefaultSearchScope 'SCcf'

put 'Disable the warning when changing a file extension.'
use FXEnableExtensionChangeWarning false

put 'Expand the following File Info panes: "General", "Open with", and "Sharing & Permissions"'
use FXInfoPanesExpanded -dict \
    General true              \
    OpenWith true             \
    Privileges true

put 'Use list view by default.'
use FXPreferredViewStyle 'Nlsv'
# Possible values:
# - Nlsv = List View
# - icnv = Icon View (default)
# - clmv = Column View
# - Flwv = Cover Flow View

put 'Set the Downloads folder as the default location for new Finder windows.'
use NewWindowTarget 'PfLo'
use NewWindowTargetPath "file://$HOME/Downloads"
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

put 'Enable text selection in the Quick Look window.'
use QLEnableTextSelection true

put 'Enable the menu option to quit Finder.'
use QuitMenuItem true
# Quitting Finder will also hide desktop icons.

put 'Show icons for hard drives, mounted servers, and removable media on the desktop.'
use ShowExternalHardDrivesOnDesktop true
use ShowHardDrivesOnDesktop true
use ShowMountedServersOnDesktop true
use ShowRemovableMediaOnDesktop true

put 'Show path bar.'
use ShowPathbar true

put 'Show status bar.'
use ShowStatusBar true

put 'Disable the warning before emptying the Trash.'
use WarnOnEmptyTrash false

# # Restart the Finder to apply the settings.
# killall Finder
