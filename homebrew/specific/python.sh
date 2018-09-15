#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Python
+ - - - - - - - - - - - - - - - - - - - -
'

# Python 2
# A programming language.
# https://www.python.org/
nix-env --install --attr nixpkgs.python27Full

# Python 3
# A programming language.
# https://www.python.org/
nix-env --install --attr nixpkgs.python37Full


# # pyenv
# # pyenv lets you easily switch between multiple versions of Python.
# # https://github.com/yyuu/pyenv
# brew install pyenv

# # Python 2
# # A programming language.
# # https://www.python.org/
# pyenv install 2.7.15
# pyenv global 2.7.15
