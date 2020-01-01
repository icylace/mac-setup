#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - JavaScript
+ - - - - - - - - - - - - - - - - - - - -
'

# .ejs
# EJS language support for Visual Studio Code, generated from gregory-m's (github) TextMate bundle
# https://marketplace.visualstudio.com/items?itemName=QassimFarid.ejs-language-support
code --install-extension QassimFarid.ejs-language-support

# CodeMetrics
# Computes complexity in TypeScript / JavaScript files.
# https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-codemetrics
code --install-extension kisstkondoros.vscode-codemetrics

# Complete JSDoc Tags
# Provides code completion while editing JSDoc comments
# https://marketplace.visualstudio.com/items?itemName=HookyQR.JSDocTagComplete
code --install-extension HookyQR.JSDocTagComplete

# Document This
# Automatically generates detailed JSDoc comments in TypeScript and JavaScript files.
# https://marketplace.visualstudio.com/items?itemName=joelday.docthis
code --install-extension joelday.docthis

# Debugger for Chrome
# Debug your JavaScript code in the Chrome browser, or any other target that supports the Chrome Debugger protocol.
# https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome
code --install-extension msjsdiag.debugger-for-chrome

# ECMAScript Quotes Transformer
# Transform quotes of ECMAScript string literals.
# https://marketplace.visualstudio.com/items?itemName=vilicvane.es-quotes
code --install-extension vilicvane.es-quotes

# ESLint
# Integrates ESLint JavaScript into VS Code.
# https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
code --install-extension dbaeumer.vscode-eslint

# Jest
# Use Facebook's Jest With Pleasure.
# https://marketplace.visualstudio.com/items?itemName=Orta.vscode-jest
code --install-extension Orta.vscode-jest

# Vetur
# Vue tooling for VS Code
# https://marketplace.visualstudio.com/items?itemName=octref.vetur
code --install-extension octref.vetur

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - JavaScript - Node.js
+ - - - - - - - - - - - - - - - - - - - -
'

# Node.js Modules Intellisense
# Autocompletes Node.js modules in import statements
# https://marketplace.visualstudio.com/items?itemName=leizongmin.node-module-intellisense
code --install-extension leizongmin.node-module-intellisense

# npm
# npm support for VS Code
# https://marketplace.visualstudio.com/items?itemName=eg2.vscode-npm-script
code --install-extension eg2.vscode-npm-script
