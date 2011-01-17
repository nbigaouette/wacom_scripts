#!/bin/bash

# Inspired by http://swiss.ubuntuforums.org/showthread.php?t=1321238&page=83

# Get ID
device=`xinput list --short | grep -i "Wacom.*Pad" | sed "s|.*id=\([0-9]*\).*|\1|g"`
#device=12

echo "Device: $device"

if [[ "$device" == "" ]]; then
    echo "Device not found!"
    exit
fi

STATUS=`xsetwacom get "$device" touch`

#icon="system"
duration="1000"

if [[ "$STATUS" == "off" ]]; then
    echo "Touch was OFF, enabling."
    icon="/home/nicolas/fichiers/scripts/wacom_scripts.git/touchpad-enable-icon.png"
    notify-send -i ${icon} -t ${duration} "Wacom Touchpad enabled"
    xsetwacom set "$device" touch on
else
    echo "Touch was ON, disabling."
    icon="/home/nicolas/fichiers/scripts/wacom_scripts.git/touchpad-disable-icon.png"
    notify-send -i ${icon} -t ${duration} "Wacom Touchpad disabled"
    xsetwacom set "$device" touch off
fi


