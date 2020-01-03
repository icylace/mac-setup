#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - PHP
+ - - - - - - - - - - - - - - - - - - - -
'

# PHP Debug
# Debug support for PHP with XDebug
# https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug
code --install-extension felixfbecker.php-debug

# PHP DocBlocker
# A simple, dependency free PHP specific DocBlocking package
# https://marketplace.visualstudio.com/items?itemName=neilbrayfield.php-docblocker
code --install-extension neilbrayfield.php-docblocker

# PHP Intelephense
# PHP code intelligence for Visual Studio Code
# https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client
code --install-extension bmewburn.vscode-intelephense-client

# PHP Mess Detector
# VSCode plugin for PHP Mess Detector
# https://marketplace.visualstudio.com/items?itemName=ecodes.vscode-phpmd
code --install-extension ecodes.vscode-phpmd
