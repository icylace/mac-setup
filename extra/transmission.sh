#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                Transmission                 -'
blue '-             BitTorrent client.              -'
blue '-       https://www.transmissionbt.com/       -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults org.m0k.transmission'

t "Don't prompt for confirmation before downloading."
+ DownloadAsk false

t 'Use a certain folder to store incomplete downloads.'
+ IncompleteDownloadFolder "$HOME/Downloads/_ torrents"
+ UseIncompleteDownloadFolder true

t 'Hide the donate message.'
+ WarningDonate false

t 'Hide the legal disclaimer.'
+ WarningLegal false

# # Restart Transmission to apply the settings.
# killall Transmission
