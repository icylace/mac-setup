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
# http://colorsnapper.com/
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
# http://ulyssesapp.com/
mas install 623795237

# Yoink
# Drop & drop enhancement.
# http://eternalstorms.at/yoink/Yoink_-_Simplify_and_Improve_Drag_and_Drop_on_your_Mac/Yoink_-_Simplify_drag_and_drop_on_your_Mac.html
mas install 457622435
