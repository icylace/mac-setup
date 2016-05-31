#!/usr/bin/env bash

# blue '
# -----------------------------------------------
# -                  Firewall                   -
# -----------------------------------------------
# '

# alias +='write_defaults /Library/Preferences/com.apple.alf'
# alias +='sudo defaults write /Library/Preferences/com.apple.alf'

# t 'Enable the OS X firewall.'
# + globalstate -int 1
# # Possible values:
# #   0 = off
# #   1 = on for specific services
# #   2 = on for essential services

# t 'Enable Stealth mode.'
# + stealthenabled -int 1

# t 'Enable Firewall logging.'
# + loggingenabled -int 1

# t 'Reload the firewall.'
# launchctl unload /System/Library/LaunchAgents/com.apple.alf.useragent.plist
# sudo launchctl unload /System/Library/LaunchDaemons/com.apple.alf.agent.plist
# sudo launchctl load /System/Library/LaunchDaemons/com.apple.alf.agent.plist
# launchctl load /System/Library/LaunchAgents/com.apple.alf.useragent.plist
