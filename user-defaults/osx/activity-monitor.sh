#!/usr/bin/env bash

blue ''
blue '-----------------------------------------------'
blue '-              Activity Monitor               -'
blue '-----------------------------------------------'
blue ''

alias d='write_defaults com.apple.ActivityMonitor'

t 'Show the main window when launching.'
d OpenMainWindow true

t "Visualize CPU usage in the Activity Monitor's Dock icon."
d IconType 5

t 'Show all processes by default.'
d ShowCategory 0
# Default: 100

t 'Sort results by CPU usage.'
d SortColumn 'CPUUsage'
d SortDirection 0

# t 'Mavericks: Adding the % CPU column to the Disk and Network tabs...'
# d "UserColumnsPerTab v4.0" -dict \
#     '0' '( Command, CPUUsage, CPUTime, Threads, IdleWakeUps, PID, UID )' \
#     '1' '( Command, anonymousMemory, Threads, Ports, PID, UID, ResidentSize )' \
#     '2' '( Command, PowerScore, 12HRPower, AppSleep, graphicCard, UID )' \
#     '3' '( Command, bytesWritten, bytesRead, Architecture, PID, UID, CPUUsage )' \
#     '4' '( Command, txBytes, rxBytes, txPackets, rxPackets, PID, UID, CPUUsage )'

# t 'Mavericks: Sort by CPU usage in Disk and Network tabs...'
# d UserColumnSortPerTab -dict \
#     '0' '{ direction = 0; sort = CPUUsage; }' \
#     '1' '{ direction = 0; sort = ResidentSize; }' \
#     '2' '{ direction = 0; sort = 12HRPower; }' \
#     '3' '{ direction = 0; sort = CPUUsage; }' \
#     '4' '{ direction = 0; sort = CPUUsage; }'
