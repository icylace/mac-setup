#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Settings Management
+ - - - - - - - - - - - - - - - - - - - -
'

# Settings Cycler
# Allows cycling through vscode settings using keyboard shortcuts
# https://marketplace.visualstudio.com/items?itemName=hoovercj.vscode-settings-cycler
code --install-extension hoovercj.vscode-settings-cycler

# Settings Sync
# Synchronize Settings, Snippets, Themes, File Icons, Launch, Keybindings, Workspaces and Extensions Across Multiple Machines Using GitHub Gist.
# https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
code --install-extension Shan.code-settings-sync

# Sublime Text Keymap and Settings Importer
# Import Sublime Text settings and keybindings into VS Code.
# https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings
code --install-extension ms-vscode.sublime-keybindings
