#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Python
+ - - - - - - - - - - - - - - - - - - - -
'

# pyenv
# pyenv lets you easily switch between multiple versions of Python.
# https://github.com/yyuu/pyenv
brew install pyenv

# Python 2
# Python is a programming language that lets you work quickly
# and integrate systems more effectively.
# https://www.python.org/
pyenv install 2.7.15
pyenv global 2.7.15
