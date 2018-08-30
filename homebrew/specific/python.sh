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
# A programming language.
# https://www.python.org/
pyenv install 2.7.14
pyenv global 2.7.14
