#!/usr/bin/env bash

write_defaults() {
  if (($# < 3)) ; then
    echo "Error: write_defaults() needs more arguments" 1>&2
    return 1
  fi

  local domain=$1 key=$2
  local the_rest type_option value
  local -i i

  # Use any explicitly given type option.
  if (($# > 3)) ; then
    type_option=$3
    shift 3
    if [[ $type_option =~ -(array(-add)?|dict(-add)?|data|date) ]] ; then
      for ((i=1 ; i <= $# ; i++)) ; do
        value="$value\"${!i}\" "
      done
    else
      value="$@"
    fi
  # Determine the type of the value.
  else
    value=$3
    # https://stackoverflow.com/a/19116862
    if [ "$value" -eq "$value" ] 2>/dev/null ; then
      type_option='-int'
    elif [[ $value == true || $value == false ]] ; then
      type_option='-bool'
    elif [[ $value =~ ^[+-]?[0-9]+\.[0-9]+$ ]] ; then
      type_option='-float'
    else
      type_option='-string'
      value="\"$value\""
    fi
  fi

  defaults write "$domain" "$key" "$type_option" "$value"
}
