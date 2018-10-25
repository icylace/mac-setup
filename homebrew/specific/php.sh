#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  PHP
+ - - - - - - - - - - - - - - - - - - - -
'

# PHP
# PHP is a popular general-purpose scripting language that is especially
# suited to web development.
# https://secure.php.net/
nix-env --install --attr nixpkgs.php

# Composer
# Dependency manager for PHP.
# https://getcomposer.org/
nix-env --install --attr nixpkgs.php72Packages.composer

sudo composer self-update

# # Drush
# # Shell interface for Drupal.
# # https://github.com/drush-ops/drush
# brew install homebrew/php/drush
