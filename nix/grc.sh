#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Generic Colouriser
+ - - - - - - - - - - - - - - - - - - - -
'

# Generic Colouriser
# Colorizes logfiles and command output.
# https://github.com/garabik/grc
nix-env --install --attr nixpkgs.grc

if we_have grc ; then
  # Make sure `grc` knows about our custom color configurations.

  # http://stackoverflow.com/a/4990185/1935675
  cat <<EOF >> "$HOME/.nix-profile/etc/grc.conf"

# hexdump
(^|[/\w\.]+/)hexdump\s?
conf.hexdump
EOF

fi
