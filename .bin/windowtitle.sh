#!/bin/bash
winTitle=`echo $(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '"' -f2)`

if [[ -z $(echo "$winTitle") ]]
then
    echo "$winTitle"
else
    echo "Desktop"
fi
