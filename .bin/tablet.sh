#!/bin/bash
tabletID=`xinput list | grep -e "PenTablet Pen" | sed -e 's/[^0-9.]*id\=//g' | cut -b 1-2`
#echo "$tabletID"
xinput map-to-output "$tabletID" eDP1
exit
