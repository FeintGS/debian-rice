#!/usr/bin/env bash

Title="Client Machine"
Body=""
PROC_NET_DEV="cat /proc/dev/net | tr -s ' ' | grep wlp3s0 | cut -d' ' -f "

Body+="Hostname:"
Body+="IP Address"
Body+="Physical Address"

Body+="Total Received: `eval $PROC_NET_DEV 10`"
Body+="Total Sent: `eval $PROC_NET_DEV 2`"
Body+="Power Saving:"
Body+="Operating Mode:"

notify-send -u low "$Title" "$Body"
