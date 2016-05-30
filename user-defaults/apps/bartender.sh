#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                  Bartender                  -'
blue '-              Menu bar manager.              -'
blue '-         http://www.macbartender.com/        -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults com.surteesstudios.Bartender'

t 'Show the menu bar icon.'
+ showMenuBarIcon true

t 'Make sure the menu bar icon is the bartender.'
+ statusBarImageNamed 'Bartender'
