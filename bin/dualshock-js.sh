#!/bin/bash

DEV=$1
NUM=$(ls /dev/input/controllers/event*|wc -l)

logger "added dualshock controller $DEV"
JSSYS=$(find "/sys/class/input/$DEV/device/" -name "js*")
JSDEV="$(basename $JSSYS)"

/bin/mv "/dev/input/$JSDEV" "/dev/input/controllers/js$NUM"
logger "non xboxdrv compatible $JSDEV moved"

sleep 1
LEDS=(/sys/class/input/$DEV/device/device/leds/*sony[1-4])
LEDN=/sys/class/input/$DEV/device/device/leds/*sony$NUM

for LED in "${LEDS[@]}"; do
  echo "none" > $LED/trigger
  echo "0" > $LED/brightness
done

echo "1" > $LEDN/brightness
