#!/bin/bash

# Inspired by http://swiss.ubuntuforums.org/showthread.php?t=1321238&page=83

# Get ID
device=`xinput list --short | grep -i "Wacom.*Pad" | sed "s|.*id=\([0-9]*\).*|\1|g"`
#device=12

STATUS=`xsetwacom get "$device" touch`

if [[ "$STATUS" == "off" ]]; then
    echo "Touch was OFF, enabling."
    xsetwacom set "$device" touch on
else
    echo "Touch was ON, disabling."
    xsetwacom set "$device" touch off
fi


