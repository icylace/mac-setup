#!/usr/bin/env bash

blue '
-----------------------------------------------
-                   Python                     -
-----------------------------------------------
'

# pyenv
# pyenv lets you easily switch between multiple versions of Python.
# https://github.com/yyuu/pyenv
brew install pyenv

# Python 2
# A programming language.
# https://www.python.org/
pyenv install 2.7.12
pyenv global 2.7.12

# eg
# Useful examples at the command line.
# https://github.com/srsudar/eg
pip install --upgrade eg

# Ohmu
# View disk space usage in your terminal.
# https://github.com/paul-nechifor/ohmu
pip install --upgrade ohmu

# # pip-tools
# # A set of command line tools to help you keep your pip-based packages fresh,
# # even when you've pinned them.
# # https://github.com/nvie/pip-tools
# pip install --upgrade pip-tools

# searchcmd
# Search the internet for command line commands from the command line.
# https://github.com/jimmyppi/searchcmd
pip install --upgrade searchcmd
