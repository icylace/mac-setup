#!/usr/bin/env bash

setup_docker() {
  blue '
  +-------------------------------------------------------------------------------
  :  Docker
  + - - - - - - - - - - - - - - - - - - - -
  '

  # Docker Community Edition for Mac (Edge)
  # Docker is an open platform for developing, shipping, and running applications.
  # https://store.docker.com/editions/community/docker-ce-desktop-mac
  brew cask install docker-edge

  # Setup shell completion:
  # https://docs.docker.com/docker-for-mac/#install-shell-completion

  # For Bash:
  # https://docs.docker.com/docker-for-mac/#bash
  local etc=/Applications/Docker.app/Contents/Resources/etc
  ln -s $etc/docker.bash-completion $(brew --prefix)/etc/bash_completion.d/docker
  ln -s $etc/docker-machine.bash-completion $(brew --prefix)/etc/bash_completion.d/docker-machine
  ln -s $etc/docker-compose.bash-completion $(brew --prefix)/etc/bash_completion.d/docker-compose

  # For Z Shell:
  # https://docs.docker.com/docker-for-mac/#zsh
  etc=/Applications/Docker.app/Contents/Resources/etc
  ln -s $etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
  ln -s $etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
  ln -s $etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose
}

setup_docker
