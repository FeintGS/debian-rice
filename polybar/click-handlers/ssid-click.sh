#!/usr/bin/env bash

Title="Access Point"
Body=""
NETSTAT="netstat -i | tr -s ' ' | grep wlp3s0 | cut -d' ' -f "
PROC_NET_DEV="cat /proc/dev/net | tr -s ' ' | grep wlp3s0 | cut -d' ' -f "

Body+="Identifier: ``"
Body+="IP Address:"
Body+="Physical Address:"

Body+="Encryption Type:"
Body+="Frequency: ``"
Body+="MTU: `eval $NETSTAT 2`"

notify-send -u low "$Title" "$Body"
