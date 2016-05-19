#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                  Bartender                  -'
blue '-              Menu bar manager.              -'
blue '-         http://www.macbartender.com/        -'
blue '-----------------------------------------------'
blue ''

alias dw='defaults write com.surteesstudios.Bartender'

et 'Show the menu bar icon.'
dw showMenuBarIcon -bool true

et 'Make sure the menu bar icon is the bartender.'
dw statusBarImageNamed -string 'Bartender'
