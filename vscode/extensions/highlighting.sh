#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Highlighting
+ - - - - - - - - - - - - - - - - - - - -
'

# Bracket Pair Colorizer
# A customizable extension for colorizing matching brackets
# https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer
code --install-extension CoenraadS.bracket-pair-colorizer

# Color Highlight
# Highlight web colors in your editor
# https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight
code --install-extension naumovs.color-highlight

# Highlight Bad Chars
# Extension to highlight bad characters such as No-break space ( ) and the Greek question mark (;) in your source files.
# https://marketplace.visualstudio.com/items?itemName=wengerk.highlight-bad-chars
code --install-extension wengerk.highlight-bad-chars

# Highlight Matching Tag
# Highlights matching closing or opening tag
# https://marketplace.visualstudio.com/items?itemName=vincaslt.highlight-matching-tag
code --install-extension vincaslt.highlight-matching-tag

# indent-rainbow
# Makes indentation easier to read
# https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow
code --install-extension oderwat.indent-rainbow

# Rainbow Brackets
# A rainbow brackets extension for VS Code.
# https://marketplace.visualstudio.com/items?itemName=2gua.rainbow-brackets
code --install-extension 2gua.rainbow-brackets

# Rainbow String
# Add rainbow effect to quoted string
# https://marketplace.visualstudio.com/items?itemName=wk-j.vscode-rainbow-string
code --install-extension wk-j.vscode-rainbow-string

# TODO Highlight
# highlight TODOs, FIXMEs, and any keywords, annotations...
# https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight
code --install-extension wayou.vscode-todo-highlight
