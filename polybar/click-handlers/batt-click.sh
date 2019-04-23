#!/bin/bash

notification_msg=''
path_battery_0='/sys/class/power_supply/BAT0/'
path_battery_1='/sys/class/power_supply/BAT1/'

if [ -f "$path_battery_0/energy_now" ] && [ -f "$path_battery_0/energy_full" ]; then
    now=`cat $path_battery_0/energy_now`
    full=`cat $path_battery_0/energy_full`
    percent_remaining="$(( now*100 / full ))%"

    cycles_now=`cat $path_battery_0/energy_full`
    cycles_design=`cat $path_battery_0/energy_full_design`
    cycles_remaining="$(( cycles_now*100 / cycles_design ))%"

    notification_msg="$notification_msg""<u>BAT0 (`cat $path_battery_0/status`)</u>\n$percent_remaining charged, $cycles_remaining cycles\n"

    notification_msg="$notification_msg""`cat $path_battery_0/{manufacturer,model_name,technology,type,serial_number} | tr '\n' ' '`"
fi

if [ -f "$path_battery_1/energy_now" ] && [ -f "$path_battery_1/energy_full" ]; then
    now=`cat $path_battery_1/energy_now`
    full=`cat $path_battery_1/energy_full`
    percent_remaining="$(( now*100 / full ))%"

    cycles_now=`cat $path_battery_1/energy_full`
    cycles_design=`cat $path_battery_1/energy_full_design`
    cycles_remaining="$(( cycles_now*100 / cycles_design ))%"

    notification_msg="$notification_msg""\n\n<u>BAT1 (`cat $path_battery_1/status`)</u>\n$percent_remaining charged, $cycles_remaining cycles\n"

    notification_msg="$notification_msg""`cat $path_battery_1/{manufacturer,model_name,technology,type,serial_number} | tr '\n' ' '`"
fi

notify-send -u normal "Battery remaining status" "$notification_msg"
