#!/bin/bash

# http://linuxwacom.sourceforge.net/index.php/howto/xsetwacom
# http://doc.ubuntu-fr.org/wacom_bamboo_fun

# Get ID
#device=`xinput list --short | grep -i "Wacom.*Pad" | sed "s|.*id=\([0-9]*\).*|\1|g"`
device="Wacom Bamboo 2FG 4x5 Finger pad"

notify-send -i "/home/nicolas/fichiers/scripts/wacom_scripts.git/tablet.png" -t "1000" "Configuring Wacom Tablet..."

# Keys
key_shortcut_right_click="CTRL SHIFT F10" # xdotool click 3
key_shortcut_toggle_touch="CTRL SHIFT F9" # /home/nicolas/fichiers/scripts/wacom.sh
xournal_toggle_shape_recognizer="CONTROL SHIFT s"
#pageup="Prior"
#pagedown="Next"
pageup="4" # Mouse button 5
pagedown="5" # Mouse button 4

button_top="button3"
button_middle_top="button8"
button_middle_bottom="button9"
button_bottom="button1"

xsetwacom set "${device}" ${button_top}             "key ${key_shortcut_right_click}"
xsetwacom set "${device}" ${button_middle_top}      "${pageup}"
xsetwacom set "${device}" ${button_middle_bottom}   "${pagedown}"
xsetwacom set "${device}" ${button_bottom}          "key ${key_shortcut_toggle_touch}"

# Make sure the gestures are enabled
#xsetwacom set "${device}" "Gesture" "on"
# Gesture is broken for now...
xsetwacom set "${device}" "Gesture" "off"
