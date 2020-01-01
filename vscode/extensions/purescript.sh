#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - PureScript
+ - - - - - - - - - - - - - - - - - - - -
'

# PureScript Language Support
# Syntax Highlighting for the PureScript programming language
# https://marketplace.visualstudio.com/items?itemName=nwolverson.language-purescript
code --install-extension nwolverson.language-purescript

# PureScript IDE
# PureScript IntelliSense, tooltip, errors, code actions with language-server-purescript/purs IDE server
# https://marketplace.visualstudio.com/items?itemName=nwolverson.ide-purescript
code --install-extension nwolverson.ide-purescript

# vscode-purescript-emmet
# vscode extension for purescript-emmet
# https://marketplace.visualstudio.com/items?itemName=spacethimble.vscode-purescript-emmet
code --install-extension spacethimble.vscode-purescript-emmet




# TODO:
#
# purescript-prelude
# purescript-console
# purescript-psci-support
#
# psc-package install console
# psc-package install psci-support
# psc-package install foreign-generic
# psc-package install aff
