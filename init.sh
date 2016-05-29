#!/usr/bin/env bash

# We're focusing on OS X so abort if we're not in it.
[[ "$OSTYPE" =~ ^darwin ]] || return 1

# Use aliases in non-interactive shells.
# http://stackoverflow.com/a/1615973/1935675
shopt -s expand_aliases

# Useable colors.
black() {
  e $@ '\033[0;30m'
}
red() {
  e $@ '\033[0;31m'
}
green() {
  e $@ '\033[0;32m'
}
yellow() {
  e $@ '\033[0;33m'
}
blue() {
  e $@ '\033[0;34m'
}
magenta() {
  e $@ '\033[0;35m'
}
cyan() {
  e $@ '\033[0;36m'
}
light_gray() {
  e $@ '\033[0;37m'
}

#
# Echo with color.
#
# Based on:
# https://gist.github.com/brandonb927/3195465#file-osx-for-hackers-sh-L24
#
e() {
  echo -e "$($2)$1"
  # Reset text attributes to normal without clearing the screen.
  tput sgr0
}

#
# Indented echo with color.
#
et() {
  e "\t$1" "$2"
}

#
# Checks if a command or program is available.
#
# Example usage:
#
#     if we_have foo ; then
#       # foo exists
#     else
#       # foo doesn't exist
#     if
#
we_have() {
  return $(type $@ >/dev/null 2>&1)
}

# TODO
# - array
# - array-add
# - dict
# - dict-add
# - date
# - data
write_defaults() {
  if (( $# < 3 )) ; then
    echo "Error: write_defaults() needs more arguments" 1>&2
    return 1
  elif (( $# > 4 )) ; then
    echo "Error: write_defaults() needs fewer arguments" 1>&2
    return 1
  fi

  local domain=$1
  local key=$2
  local type_option
  local value

  # Use any explicitly given type option.
  if (( $# == 4 )) ; then
    type_option="$3 "
    value="$4"
  # Determine the type of the value.
  else
    value="$3"
    # http://stackoverflow.com/a/19116862/1935675
    if [ "$value" -eq "$value" ] 2>/dev/null ; then
      type_option='-int '
    elif [[ $value == true || $value == false ]] ; then
      type_option='-bool '
    elif [[ $value =~ ^[+-]?[0-9]+\.[0-9]+$ ]] ; then
      type_option='-float '
    else
      type_option='-string '
      value="\"$value\""
    fi
  fi

  echo "defaults write $domain $key $type_option$value"
}
