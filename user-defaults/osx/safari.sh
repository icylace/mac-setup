#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Safari
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.Safari'

put 'Always show the tab bar.'
use AlwaysShowTabBar true

put 'Disable auto-fill.'
use AllowBypassOfAutocompleteOff 0
use AutoFillFromAddressBook 0
use AutoFillPasswords 0
use AutoFillCreditCardData 0
use AutoFillMiscellaneousForms 0

put "Prevent Safari from opening 'safe' files automatically after downloading."
use AutoOpenSafeDownloads false

put 'Allow hitting the Backspace key to go to the previous page in history.'
use com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled true

put 'Enable the Web Inspector.'
use com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled true
use WebKitDeveloperExtrasEnabledPreferenceKey true

put 'Press Tab to highlight each item on a webpage.'
use com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks true
use WebKitTabToLinksPreferenceKey true

put 'Disable thumbnail cache for History and Top Sites.'
use DebugSnapshotsUpdatePolicy 2
# http://krypted.com/mac-os-x/disable-snapshot-caching-in-safari/

put 'Make search banners default to Contains instead of Starts With.'
use FindOnPageMatchesWordStartsOnly false

put 'Set home page to "about:blank" for faster loading.'
use HomePage 'about:blank'

put 'Enable the Develop menu.'
use IncludeDevelopMenu true

put 'Enable debug menu.'
use IncludeInternalDebugMenu true

put 'Remove icons from the bookmarks bar.'
use ProxiesInBookmarksBar '()'
# http://krypted.com/mac-security/how-to-gain-about-half-an-inch-in-safari/

put 'Hide the bookmarks bar by default.'
use ShowFavoritesBar false

put 'Show the full URL in the address bar (note: this still hides the scheme).'
use ShowFullURLInSmartSearchField true

put 'Hide the sidebar in Top Sites.'
use ShowSidebarInTopSites false

put 'Show status bar.'
use ShowStatusBar true

put "Don't send search queries to Apple."
use SuppressSearchSuggestions true
use UniversalSearchEnabled false

put 'Open targeted click link in new tabs.'
use TargetedClicksCreateTabs true
# http://krypted.com/uncategorized/safari-tab-creation/
