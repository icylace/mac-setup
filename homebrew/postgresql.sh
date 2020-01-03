#!/usr/bin/env bash

blue '
+-------------------------------------------------------------------------------
:  PostgreSQL
+ - - - - - - - - - - - - - - - - - - - -
'

# PostgreSQL
# Object-relational database system
# https://www.postgresql.org/
brew install postgresql
# Notes from the brew install:
#
# To migrate existing data from a previous major version of PostgreSQL run:
#   brew postgresql-upgrade-database
#
# To have launchd start postgresql now and restart at login:
#   brew services start postgresql
# Or, if you don't want/need a background service you can just run:
#   pg_ctl -D /usr/local/var/postgres start
