#!/usr/bin/env bash

source ./init.sh
source ./user-defaults/write-defaults.sh

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

put 'When performing a search, search the current folder by default.'
use FXDefaultSearchScope 'SCcf'

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

put 'Show path bar.'
use ShowPathbar true

put 'Show status bar.'
use ShowStatusBar true
