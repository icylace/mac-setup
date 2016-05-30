#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                   Safari                    -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.Safari'

t 'Always show the tab bar.'
d AlwaysShowTabBar true

t 'Disable auto-fill.'
d AllowBypassOfAutocompleteOff 0
d AutoFillFromAddressBook 0
d AutoFillPasswords 0
d AutoFillCreditCardData 0
d AutoFillMiscellaneousForms 0

t "Prevent Safari from opening 'safe' files automatically after downloading."
d AutoOpenSafeDownloads false

t 'Allow hitting the Backspace key to go to the previous page in history.'
d com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled true

t 'Enable the Web Inspector.'
d com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled true
d WebKitDeveloperExtrasEnabledPreferenceKey true

t 'Press Tab to highlight each item on a webpage.'
d com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks true
d WebKitTabToLinksPreferenceKey true

t 'Disable thumbnail cache for History and Top Sites.'
d DebugSnapshotsUpdatePolicy 2
# http://krypted.com/mac-os-x/disable-snapshot-caching-in-safari/

t 'Make search banners default to Contains instead of Starts With.'
d FindOnPageMatchesWordStartsOnly false

t "Set home page to 'about:blank' for faster loading."
d HomePage -string 'about:blank'

t 'Enable the Develop menu.'
d IncludeDevelopMenu true

t 'Enable debug menu.'
d IncludeInternalDebugMenu true

t 'Remove icons from the bookmarks bar.'
d ProxiesInBookmarksBar '()'
# http://krypted.com/mac-security/how-to-gain-about-half-an-inch-in-safari/

t 'Hide the bookmarks bar by default.'
d ShowFavoritesBar false

t 'Show the full URL in the address bar (note: this still hides the scheme).'
d ShowFullURLInSmartSearchField true

t 'Hide the sidebar in Top Sites.'
d ShowSidebarInTopSites false

t 'Show status bar.'
d ShowStatusBar true

t "Don't send search queries to Apple."
d SuppressSearchSuggestions true
d UniversalSearchEnabled false

t 'Open targeted click link in new tabs.'
d TargetedClicksCreateTabs true
# http://krypted.com/uncategorized/safari-tab-creation/
