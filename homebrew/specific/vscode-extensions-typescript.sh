#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - TypeScript
+ - - - - - - - - - - - - - - - - - - - -
'

# JSON to TS
# Convert JSON object to typescript interfaces
# https://marketplace.visualstudio.com/items?itemName=MariusAlchimavicius.json-to-ts
code --install-extension MariusAlchimavicius.json-to-ts

# TSLint
# TSLint for Visual Studio Code
# https://marketplace.visualstudio.com/items?itemName=eg2.tslint
code --install-extension eg2.tslint

# TypeScript Import
# Automates importing of TypeScript classes
# https://marketplace.visualstudio.com/items?itemName=kevinmcgowan.TypeScriptImport
code --install-extension kevinmcgowan.TypeScriptImport
