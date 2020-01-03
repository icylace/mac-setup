#!/usr/bin/env bash

source ../../init.sh
source ../write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  Safari
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.Safari'

put 'Disable auto-fill.'
use AllowBypassOfAutocompleteOff 0
use AutoFillFromAddressBook 0
use AutoFillPasswords 0
use AutoFillCreditCardData 0
use AutoFillMiscellaneousForms 0

put "Prevent Safari from opening 'safe' files automatically after downloading."
use AutoOpenSafeDownloads false

put 'Enable the Web Inspector.'
use com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled true
use WebKitDeveloperExtrasEnabledPreferenceKey true

put 'Press Tab to highlight each item on a webpage.'
use com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks true
use WebKitTabToLinksPreferenceKey true

put 'Make search banners default to Contains instead of Starts With.'
use FindOnPageMatchesWordStartsOnly false

put 'Enable the Develop menu.'
use IncludeDevelopMenu true

put 'Enable debug menu.'
use IncludeInternalDebugMenu true

put 'Hide the bookmarks bar by default.'
use ShowFavoritesBar false

put 'Show the full URL in the address bar (note: this still hides the scheme).'
use ShowFullURLInSmartSearchField true

put 'Hide the sidebar in Top Sites.'
use ShowSidebarInTopSites false

put 'Show status bar.'
use ShowStatusBar true

# http://krypted.com/uncategorized/safari-tab-creation/
put 'Open targeted click link in new tabs.'
use TargetedClicksCreateTabs true
