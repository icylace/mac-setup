#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Haskell
+ - - - - - - - - - - - - - - - - - - - -
'

# Haskell Syntax Highlighting
# Syntax support for the Haskell programming language.
# https://marketplace.visualstudio.com/items?itemName=justusadam.language-haskell
code --install-extension justusadam.language-haskell

# TODO:
# # Haskero
# # A full featured Haskell IDE
# # https://marketplace.visualstudio.com/items?itemName=Vans.haskero
# code --install-extension Vans.haskero

# haskell-linter
# An extension to use hlint in vscode
# https://marketplace.visualstudio.com/items?itemName=hoovercj.haskell-linter
code --install-extension hoovercj.haskell-linter

# hoogle-vscode
# Haskell Hoogle search in Visual Studio Code
# https://marketplace.visualstudio.com/items?itemName=jcanero.hoogle-vscode
code --install-extension jcanero.hoogle-vscode
