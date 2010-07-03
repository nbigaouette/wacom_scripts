#!/bin/bash

# http://linuxwacom.sourceforge.net/index.php/howto/xsetwacom
# http://doc.ubuntu-fr.org/wacom_bamboo_fun

#device=`xinput list --short | grep -i "Wacom.*Pad" | cut -f 1 | sed -e 's|⎜   ↳ ||g'`
#device="Wacom BambooFun 2FG 4x5 Finger pad"
# Get ID
device=`xinput list --short | grep -i "Wacom.*Pad" | sed "s|.*id=\([0-9]*\).*|\1|g"`
#device=12


kde_right_click="SHIFT F10" # xdotool click 3
kde_toggle_touch="SHIFT F9" # /home/nicolas/fichiers/scripts/wacom.sh
xournal_toggle_shape_recognizer="CONTROL SHIFT s"


xsetwacom set "$device" button1 "key ${kde_toggle_touch}"
#xsetwacom set "$device" button3 "key
xsetwacom set "$device" button3 "key ${kde_right_click}"
xsetwacom set "$device" button4 "key ${xournal_toggle_shape_recognizer}"

