#!/usr/bin/env bash

# blue ''
# blue '-----------------------------------------------'
# blue '-                  Firewall                   -'
# blue '-----------------------------------------------'
# blue ''

# alias d='write_defaults /Library/Preferences/com.apple.alf'
# alias d='sudo defaults write /Library/Preferences/com.apple.alf'

# t 'Enable the OS X firewall.'
# d globalstate -int 1
# # Possible values:
# #   0 = off
# #   1 = on for specific services
# #   2 = on for essential services

# t 'Enable Stealth mode.'
# d stealthenabled -int 1

# t 'Enable Firewall logging.'
# d loggingenabled -int 1

# t 'Reload the firewall.'
# launchctl unload /System/Library/LaunchAgents/com.apple.alf.useragent.plist
# sudo launchctl unload /System/Library/LaunchDaemons/com.apple.alf.agent.plist
# sudo launchctl load /System/Library/LaunchDaemons/com.apple.alf.agent.plist
# launchctl load /System/Library/LaunchAgents/com.apple.alf.useragent.plist
