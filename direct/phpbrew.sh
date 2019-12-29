#!/usr/bin/env bash

# PHPBrew
# Brew & manage PHP versions in pure PHP at HOME
# https://github.com/phpbrew/phpbrew
# https://github.com/phpbrew/phpbrew#installation
setup_phpbrew() {
  local tmp=$(pwd)
  mkdir -pv "$HOME/cli/phpbrew"
  cd "$HOME/cli/phpbrew"
  curl -L -O https://github.com/phpbrew/phpbrew/releases/latest/download/phpbrew.phar
  chmod +x phpbrew.phar
  phpbrew.phar init
  phpbrew.phar install 7.4.1 +everything
  phpbrew.phar system 7.4.1
  cd "$tmp"
}

setup_phpbrew
