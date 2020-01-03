#!/usr/bin/env bash

if [ ! -d "$HOME/My/CLI/phpbrew" ] ; then
  mkdir -pv "$HOME/My/CLI/phpbrew"

  # PHPBrew
  # Brew & manage PHP versions in pure PHP at HOME
  # https://github.com/phpbrew/phpbrew
  # https://github.com/phpbrew/phpbrew#installation
  setup_phpbrew() {
    local tmp=$(pwd)
    cd "$HOME/My/CLI/phpbrew"
    curl -L -O https://github.com/phpbrew/phpbrew/releases/latest/download/phpbrew.phar
    chmod +x phpbrew.phar
    phpbrew.phar init
    phpbrew.phar install 7.4.1 +everything
    phpbrew.phar system 7.4.1
    cd "$tmp"
  }

  setup_phpbrew
fi
