#!/bin/bash
# shell script to display ram usage, battery perc, cpu temp, and time/date in tmux
# memory usage needs sed, free, and bc. battery perc needs acpi.

# calculate ram percentage
ramTotal=`free -k | sed -n -e '2p' | sed 's/Mem:\s*//' | cut -b 1-8`
ramUsed=`free -k | sed -n -e '2p' | sed 's/Mem:\s*//' | cut -b 13-20`
ramShare=`free -k | sed -n -e '2p' | sed 's/Mem:\s*//' | cut -b 37-45`
ramFull=`echo $[$ramUsed+$ramShare]`
ramPerc=`echo "$(echo "scale=1; $ramFull * 100 / $ramTotal" | bc)"`

# find battery percentage
batPerc=`acpi -b | sed 's/[^0-9%]*//g' | sed 's/^[0]*//g' | cut -b 1-3`

# find cpu temperature
cpuTemp=`echo $(cat /sys/devices/platform/coretemp.0/hwmon/hwmon1/temp1_input | cut -b 1-2)°C`

# display time/date
date=`date +%d/%m/%y\ %R`

# display all in formatted string
echo "RAM: $ramPerc% | BAT: $batPerc | CPU: $cpuTemp | $date "
