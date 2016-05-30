#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                  Bartender                  -'
blue '-              Menu bar manager.              -'
blue '-         http://www.macbartender.com/        -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.surteesstudios.Bartender'

t 'Show the menu bar icon.'
d showMenuBarIcon true

t 'Make sure the menu bar icon is the bartender.'
d statusBarImageNamed 'Bartender'
