#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Docker
+ - - - - - - - - - - - - - - - - - - - -
'

# Docker
# Adds syntax highlighting, commands, hover tips, and linting for Dockerfile and docker-compose files.
# https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker
code --install-extension ms-azuretools.vscode-docker

# TODO:
# # Docker Explorer
# # Manage Docker Containers, Docker Images, Docker Hub and Azure Container Registry
# # https://marketplace.visualstudio.com/items?itemName=formulahendry.docker-explorer
# code --install-extension formulahendry.docker-explorer
