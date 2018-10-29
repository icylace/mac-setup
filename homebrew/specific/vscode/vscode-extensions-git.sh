#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Visual Studio Code - Extensions - Git
+ - - - - - - - - - - - - - - - - - - - -
'

# Git History
# View git log, file history, compare branches or commits
# https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory
code --install-extension donjayamanne.githistory

# gitignore
# Language support for .gitignore files. Lets you pull .gitignore files from
# the https://github.com/github/gitignore repository.
# https://marketplace.visualstudio.com/items?itemName=codezombiech.gitignore
code --install-extension codezombiech.gitignore

# GitLens - Git supercharged
# Supercharge the Git capabilities built into Visual Studio Code - Visualize
# code authorship at a glance via Git blame annotations and code lens,
# seamlessly navigate and explore Git repositories, gain valuable
# insights via powerful comparison commands, and so much more
# https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens
code --install-extension eamodio.gitlens
