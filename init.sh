#!/usr/bin/env bash

# We're focusing on OS X so abort if we're not in it.
[[ "$OSTYPE" =~ ^darwin ]] || return 1

# Use aliases in non-interactive shells.
# https://stackoverflow.com/a/1615973
shopt -s expand_aliases

#
# Echo with color.
#
# Based on:
# https://gist.github.com/brandonb927/3195465#file-osx-for-hackers-sh-L24
#
e() {
  echo -e "$2$1"
  # Reset text attributes to normal without clearing the screen.
  tput sgr0
}

#
# Indented echo with color.
#
t() {
  e "\t$1"
}

# Useable colors.
black()      { e "$@" '\e[0;30m' ; }
red()        { e "$@" '\e[0;31m' ; }
green()      { e "$@" '\e[0;32m' ; }
yellow()     { e "$@" '\e[0;33m' ; }
blue()       { e "$@" '\e[0;34m' ; }
magenta()    { e "$@" '\e[0;35m' ; }
cyan()       { e "$@" '\e[0;36m' ; }
light_gray() { e "$@" '\e[0;37m' ; }

#
# Checks if a command or program is available.
#
# Example usage:
#
# ```
# if we_have foo ; then
#   # foo exists
# else
#   # foo doesn't exist
# if
# ```
#
we_have() {
  return $(type "$@" > /dev/null 2>&1)
}
