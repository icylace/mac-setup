#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Bash
:
:  Note: We are installing a version of Bash that is more updated
:        than the one that comes with macOS.
+ - - - - - - - - - - - - - - - - - - - -
'

# Bash: The GNU Bourne-Again SHell
# A Unix shell.
# https://tiswww.case.edu/php/chet/bash/bashtop.html
nix-env --install --attr nixpkgs.bash

# Bash Completion
# Programmable completion for Bash 4.1+
# https://bash-completion.alioth.debian.org/
# https://github.com/scop/bash-completion
nix-env --install --attr nixpkgs.bash-completion
