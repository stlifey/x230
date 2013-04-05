#!/bin/sh

led="/sys/devices/platform/thinkpad_acpi/leds/tpacpi::micmute/brightness"

if [[ $(amixer sget Mic) == *"[on]"* ]]; then
	amixer -q set Mic toggle
	[[ -f $led ]] && echo 1 > $led
else
	amixer -q set Mic toggle
	[[ -f $led ]] && echo 0 > $led
fi
