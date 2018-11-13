#!/usr/bin/env bash




# # TODO: (?) replace this with VSCode's settings sync
# # Settings Sync
# # Synchronize Settings, Snippets, Themes, File Icons, Launch, Keybindings,
# # Workspaces and Extensions Across Multiple Machines Using GitHub Gist.
# # https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
# code --install-extension Shan.code-settings-sync






blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code
+ - - - - - - - - - - - - - - - - - - - -
'

# Visual Studio Code
# Code editing. Redefined.
# https://code.visualstudio.com/
brew cask install visual-studio-code
# Additional steps to install the Visual Studio Code command line tool:
# https://code.visualstudio.com/docs/editor/command-line

source vscode-extensions-*.sh
