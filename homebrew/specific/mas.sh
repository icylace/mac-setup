#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Apps from the Mac App Store
+ - - - - - - - - - - - - - - - - - - - -
'

if ! we_have mas ; then
  # mas-cli
  # Mac App Store command line interface
  # https://github.com/argon/mas
  brew install mas
fi

# ColorSnapper
# Color picker.
# https://colorsnapper.com/
mas install 969418666

# Dash
# API documentation browser and code snippet manager.
# https://kapeli.com/dash
mas install 449589707

# Slack
# Messaging app for teams.
# https://slack.com/
mas install 803453959

# Things 3
# To-do list manager.
# https://culturedcode.com/things/
mas install 904280696

# Ulysses
# Text document manager and editor designed for writing.
# https://ulysses.app/
mas install 623795237

# Yoink
# Drop & drop enhancement.
# https://eternalstorms.at/yoink/mac/
mas install 457622435
