#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                   iTerm2                    -'
blue '-             Terminal emulator.              -'
blue '-             http://iterm2.com/              -'
blue '-----------------------------------------------'
blue ''

alias dw='defaults write com.googlecode.iterm2'

et "Don't display the annoying prompt when quitting."
dw PromptOnQuit -bool false

et 'Turn on dark mode.'
dw TabStyle -bool true

# TODO
# - activate the "Load preferences fram a custom folder or URL" setting and set it to "~/My/Dropbox/Sync/iTerm2 Preferences"
# - set font
