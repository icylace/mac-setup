#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - HTML
+ - - - - - - - - - - - - - - - - - - - -
'

# Auto Close Tag
# Automatically add HTML/XML close tag, same as Visual Studio IDE
# or Sublime Text
# https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag
code --install-extension formulahendry.auto-close-tag

# Auto Rename Tag
# Auto rename paired HTML/XML tag
# https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag
code --install-extension formulahendry.auto-rename-tag

# HTML Class Suggestions
# Adds code completion suggestions to HTML class attributes based on the
# CSS files in your workspace.
# https://marketplace.visualstudio.com/items?itemName=AndersEAndersen.html-class-suggestions
code --install-extension AndersEAndersen.html-class-suggestions

# HTML CSS Support
# CSS support for HTML documents
# https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css
code --install-extension ecmel.vscode-html-css
