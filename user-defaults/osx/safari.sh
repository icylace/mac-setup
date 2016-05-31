#!/usr/bin/env bash

blue '
-----------------------------------------------
-                   Safari                    -
-----------------------------------------------
'

alias +='write_defaults com.apple.Safari'

t 'Always show the tab bar.'
+ AlwaysShowTabBar true

t 'Disable auto-fill.'
+ AllowBypassOfAutocompleteOff 0
+ AutoFillFromAddressBook 0
+ AutoFillPasswords 0
+ AutoFillCreditCardData 0
+ AutoFillMiscellaneousForms 0

t "Prevent Safari from opening 'safe' files automatically after downloading."
+ AutoOpenSafeDownloads false

t 'Allow hitting the Backspace key to go to the previous page in history.'
+ com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled true

t 'Enable the Web Inspector.'
+ com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled true
+ WebKitDeveloperExtrasEnabledPreferenceKey true

t 'Press Tab to highlight each item on a webpage.'
+ com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks true
+ WebKitTabToLinksPreferenceKey true

t 'Disable thumbnail cache for History and Top Sites.'
+ DebugSnapshotsUpdatePolicy 2
# http://krypted.com/mac-os-x/disable-snapshot-caching-in-safari/

t 'Make search banners default to Contains instead of Starts With.'
+ FindOnPageMatchesWordStartsOnly false

t "Set home page to 'about:blank' for faster loading."
+ HomePage 'about:blank'

t 'Enable the Develop menu.'
+ IncludeDevelopMenu true

t 'Enable debug menu.'
+ IncludeInternalDebugMenu true

t 'Remove icons from the bookmarks bar.'
+ ProxiesInBookmarksBar '()'
# http://krypted.com/mac-security/how-to-gain-about-half-an-inch-in-safari/

t 'Hide the bookmarks bar by default.'
+ ShowFavoritesBar false

t 'Show the full URL in the address bar (note: this still hides the scheme).'
+ ShowFullURLInSmartSearchField true

t 'Hide the sidebar in Top Sites.'
+ ShowSidebarInTopSites false

t 'Show status bar.'
+ ShowStatusBar true

t "Don't send search queries to Apple."
+ SuppressSearchSuggestions true
+ UniversalSearchEnabled false

t 'Open targeted click link in new tabs.'
+ TargetedClicksCreateTabs true
# http://krypted.com/uncategorized/safari-tab-creation/
