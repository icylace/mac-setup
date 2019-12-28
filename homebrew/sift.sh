#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  sift
+ - - - - - - - - - - - - - - - - - - - -
'

# sift
# Fast and powerful open source alternative to grep
# https://sift-tool.org/
brew install sift

# Configure sift.
sift --color --column --ignore-case --group --line-number --no-zip --stats --write-config
