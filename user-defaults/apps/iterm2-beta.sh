#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-                   iTerm2                    -'
blue '-             Terminal emulator.              -'
blue '-             http://iterm2.com/              -'
blue '-----------------------------------------------'
blue ''

alias +='write_defaults com.googlecode.iterm2'

t "Don't display the annoying prompt when quitting."
+ PromptOnQuit false

t 'Turn on dark mode.'
+ TabStyle true

# TODO
# - activate the "Load preferences fram a custom folder or URL" setting and set it to "~/My/Dropbox/Sync/iTerm2 Preferences"
# - set font
