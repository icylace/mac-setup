#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Database
+ - - - - - - - - - - - - - - - - - - - -
'

# pgFormatter
# A PostgreSQL SQL formatter
# https://marketplace.visualstudio.com/items?itemName=bradymholt.pgformatter
code --install-extension bradymholt.pgformatter

# PostgreSQL
# PostgreSQL Management Tool
# https://marketplace.visualstudio.com/items?itemName=ckolkman.vscode-postgres
code --install-extension ckolkman.vscode-postgres

# SQLTools
# Your swiss knife SQL for VScode. Execute queries, auto complete,
# bookmarks etc.
# https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools
code --install-extension mtxr.sqltools
