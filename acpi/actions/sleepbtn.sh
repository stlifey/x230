#!/bin/sh
 
# sync filesystem and clock
/bin/sync
/sbin/hwclock --systohc

# go to sleep
sleep 5 && echo -n "mem" > /sys/power/state

# readjust the clock
/sbin/hwclock --adjust
/sbin/hwclock --hctosys
