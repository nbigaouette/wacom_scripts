#!/bin/bash

# http://linuxwacom.sourceforge.net/index.php/howto/xsetwacom
# http://doc.ubuntu-fr.org/wacom_bamboo_fun

#device=`xinput list --short | grep -i "Wacom.*Pad" | cut -f 1 | sed -e 's|⎜   ↳ ||g'`
#device="Wacom BambooFun 2FG 4x5 Finger pad"
# Get ID
device=`xinput list --short | grep -i "Wacom.*Pad" | sed "s|.*id=\([0-9]*\).*|\1|g"`
#device=12


# Keys
kde_right_click="CTRL SHIFT F10" # xdotool click 3
kde_toggle_touch="CTRL SHIFT F9" # /home/nicolas/fichiers/scripts/wacom.sh
xournal_toggle_shape_recognizer="CONTROL SHIFT s"
pageup="Prior"
pagedown="Next"


xsetwacom set "$device" button1 "key ${kde_right_click}"
xsetwacom set "$device" button2 "key ${pageup}"
xsetwacom set "$device" button3 "key ${pagedown}"
xsetwacom set "$device" button4 "key ${kde_toggle_touch}"
