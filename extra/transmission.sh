#!/usr/bin/env bash

blue '
-----------------------------------------------
-                Transmission                 -
-             BitTorrent client.              -
-       https://www.transmissionbt.com/       -
-----------------------------------------------
'

alias +='write_defaults org.m0k.transmission'

t "Don't prompt for confirmation before downloading."
+ DownloadAsk false

t 'Use a certain folder to store incomplete downloads.'
+ IncompleteDownloadFolder "$HOME/Downloads"
+ UseIncompleteDownloadFolder true

t 'Hide the donate message.'
+ WarningDonate false

t 'Hide the legal disclaimer.'
+ WarningLegal false

# # Restart Transmission to apply the settings.
# killall Transmission
