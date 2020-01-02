#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - File Viewers
+ - - - - - - - - - - - - - - - - - - - -
'

# CSS Peek
# Allow peeking to css ID and class strings as definitions from html files to respective CSS. Allows peek and goto definition.
# https://marketplace.visualstudio.com/items?itemName=pranaygp.vscode-css-peek
code --install-extension pranaygp.vscode-css-peek

# File Peek
# Allow peeking to file name strings as definitions from javascript and typescript code.
# https://marketplace.visualstudio.com/items?itemName=abierbaum.vscode-file-peek
code --install-extension abierbaum.vscode-file-peek

# TODO:
# # vscode-pdf
# # Display pdf file in VSCode.
# # https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf
# code --install-extension tomoki1207.pdf
