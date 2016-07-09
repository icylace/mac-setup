#!/usr/bin/env bash

blue '
-----------------------------------------------
-                    sift                     -
-----------------------------------------------
'

# sift
# A fast and powerful open source alternative to grep.
# https://sift-tool.org/
brew install sift

# Configure sift.
sift --color --group --line-number --stats --write-config
