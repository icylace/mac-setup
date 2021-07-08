#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  Deno
+ - - - - - - - - - - - - - - - - - - - -
'

# Deno
# A secure runtime for JavaScript and TypeScript.
# https://deno.land/
brew install deno

# denon
# 👀 Monitor any changes in your Deno application and automatically restart.
# https://deno.land/x/denon
# https://github.com/denosaurs/denon
deno install -qAf --unstable https://deno.land/x/denon/denon.ts
