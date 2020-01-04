#!/usr/bin/env bash

source ./init.sh
source ./user-defaults/write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  Bartender
:  Menu bar manager.
:  https://www.macbartender.com/
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.surteesstudios.Bartender'

put 'Show the menu bar icon.'
use showMenuBarIcon true

put 'Make sure the menu bar icon is the bartender.'
use statusBarImageNamed Bartender
