#!/usr/bin/python

import smbus, pyblinkm

led = pyblinkm.BlinkM(0,9)
led.fade_to(0,24,0)
