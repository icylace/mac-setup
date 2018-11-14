#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Transmission
:  BitTorrent client.
:  https://transmissionbt.com/
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults org.m0k.transmission'

put "Don't prompt for confirmation before downloading."
use DownloadAsk false

put 'Use a certain folder to store incomplete downloads.'
use IncompleteDownloadFolder "$HOME/Downloads"
use UseIncompleteDownloadFolder true

put 'Hide the donate message.'
use WarningDonate false

put 'Hide the legal disclaimer.'
use WarningLegal false

# # Restart Transmission to apply the settings.
# killall Transmission
