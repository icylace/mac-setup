#!/usr/bin/env bash

source ../../init.sh
source ../write-defaults.sh

blue '
+-------------------------------------------------------------------------------
:  Activity Monitor
+ - - - - - - - - - - - - - - - - - - - -
'

alias use='write_defaults com.apple.ActivityMonitor'

put "Visualize CPU usage in the Activity Monitor's Dock icon."
use IconType 5

put 'Show all processes by default.'
use ShowCategory 0
# Default: 100

put 'Sort results by CPU usage.'
use SortColumn 'CPUUsage'
use SortDirection 0
