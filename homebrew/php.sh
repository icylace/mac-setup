#!/usr/bin/env bash

# # Access PHP-related formulas.
# brew tap homebrew/homebrew-php

# ------------------------------------------------------------------------------

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

# TODO: is this working/appropriate when installed through Nix?
# sudo composer self-update

# # Drush
# # Shell interface for Drupal.
# # https://github.com/drush-ops/drush
# brew install homebrew/php/drush
