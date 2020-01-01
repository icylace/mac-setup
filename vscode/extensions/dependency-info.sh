#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Dependency Info
+ - - - - - - - - - - - - - - - - - - - -
'

# Import Cost
# Display import/require package size in the editor
# https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost
code --install-extension wix.vscode-import-cost

# Version Lens
# Shows the latest version for each package using code lens
# https://marketplace.visualstudio.com/items?itemName=pflannery.vscode-versionlens
code --install-extension pflannery.vscode-versionlens
