#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Markdown
+ - - - - - - - - - - - - - - - - - - - -
'

# Markdown Preview Mermaid Support
# Adds Mermaid diagram and flowchart support to VS Code's builtin markdown preview
# https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid
code --install-extension bierner.markdown-mermaid

# TODO:
# # markdownlint
# # Markdown linting and style checking for Visual Studio Code
# # https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint
# code --install-extension DavidAnson.vscode-markdownlint

# Remark
# Beautify markdown code with Remark
# https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-remark
code --install-extension mrmlnc.vscode-remark
