#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Visual Aids
+ - - - - - - - - - - - - - - - - - - - -
'

# Disable Ligatures
# Disable ligatures at the cursor position, or disable all ligatures on the line
# https://marketplace.visualstudio.com/items?itemName=CoenraadS.disableligatures
code --install-extension CoenraadS.disableligatures

# Regex Railroad Diagrams
# Display railroad diagram of regex under cursor.
# https://marketplace.visualstudio.com/items?itemName=kogai.regex-railroad-diagrams
code --install-extension kogai.regex-railroad-diagrams

# TODO:
# # Unicode code point of current character
# # Shows the Unicode code point of character under cursor in the status bar.
# # https://marketplace.visualstudio.com/items?itemName=zeithaste.cursorCharCode
# code --install-extension zeithaste.cursorCharCode

# vscode-icons
# Icons for Visual Studio Code
# https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons
code --install-extension vscode-icons-team.vscode-icons
