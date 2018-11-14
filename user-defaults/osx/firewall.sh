#!/usr/bin/env bash

# blue '
# +-------------------------------------------------------------------------------
# :  Firewall
# + - - - - - - - - - - - - - - - - - - - -
# '

# alias use='write_defaults /Library/Preferences/com.apple.alf'
# alias use='sudo defaults write /Library/Preferences/com.apple.alf'

# put 'Enable the OS X firewall.'
# use globalstate 1
# # Possible values:
# #   0 = off
# #   1 = on for specific services
# #   2 = on for essential services

# put 'Enable Stealth mode.'
# use stealthenabled 1

# put 'Enable Firewall logging.'
# use loggingenabled 1

# put 'Reload the firewall.'
# launchctl unload /System/Library/LaunchAgents/com.apple.alf.useragent.plist
# sudo launchctl unload /System/Library/LaunchDaemons/com.apple.alf.agent.plist
# sudo launchctl load /System/Library/LaunchDaemons/com.apple.alf.agent.plist
# launchctl load /System/Library/LaunchAgents/com.apple.alf.useragent.plist
