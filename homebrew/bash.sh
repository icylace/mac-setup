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
# Bourne-Again SHell, a UNIX command interpreter
# https://tiswww.case.edu/php/chet/bash/bashtop.html
brew install bash

# Bash Completion
# Programmable completion for Bash 4.1+
# https://bash-completion.alioth.debian.org/
# https://github.com/scop/bash-completion
brew install bash-completion@2
# Installation notes:
#
# Add the following to your ~/.bash_profile:
#   [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
#
# If you'd like to use existing homebrew v1 completions, add the following before the previous line:
#   export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
