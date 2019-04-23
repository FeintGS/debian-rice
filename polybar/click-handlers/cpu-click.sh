#!/bin/bash

mpstat=$(mpstat -P ALL | awk '{print $4}' | tr '\n' ' ')

ram=$(free -h | awk '{print $3}' | tr '\n' ' ' | awk '{print $2}')
uptime=$(uptime | cut -d' ' -f2)
cpu=$(echo $mpstat | cut -d' ' -f3)
cpu0=$(echo $mpstat |cut -d' ' -f4)
cpu1=$(echo $mpstat |cut -d' ' -f5)
cpu2=$(echo $mpstat |cut -d' ' -f6)
cpu3=$(echo $mpstat |cut -d' ' -f7)

notify_summary="Uptime: $uptime\nCPU avg: $cpu%\tRAM: $ram\B\n\nCPU0: $cpu0%\tCPU1: $cpu1\nCPU2: $cpu2%\tCPU3: $cpu3%"

notify-send -u normal "System info" "$notify_summary"
