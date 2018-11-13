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

cp "$HOME/.nix-profile/etc/grc.conf" "$HOME/.grc/grc.conf"

# https://stackoverflow.com/a/4990185
# https://superuser.com/a/136653
cat <<EOF | sudo tee -a "$HOME/.grc/grc.conf"

# hexdump
(^|[/\w\.]+/)hexdump\s?
conf.hexdump
EOF
