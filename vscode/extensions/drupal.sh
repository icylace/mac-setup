#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Drupal
+ - - - - - - - - - - - - - - - - - - - -
'

# Drupal Syntax Highlighting
# Provides syntax highlighting support for Drupal specific file types, such as .module, .inc, .theme etc.
# https://marketplace.visualstudio.com/items?itemName=marcostazi.VS-code-drupal
code --install-extension marcostazi.VS-code-drupal

# Drupal-7-Hooks-Snippets
# Provides Drupal 7 snippets for core and major contributed module hooks
# https://marketplace.visualstudio.com/items?itemName=pauloamgomes.drupal7-hooks-snippets
code --install-extension pauloamgomes.drupal7-hooks-snippets
