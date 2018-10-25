#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Bartender
:  Menu bar manager.
:  https://www.macbartender.com/
+ - - - - - - - - - - - - - - - - - - - -
'

alias +='write_defaults com.surteesstudios.Bartender'

t 'Show the menu bar icon.'
+ showMenuBarIcon true

t 'Make sure the menu bar icon is the bartender.'
+ statusBarImageNamed 'Bartender'
