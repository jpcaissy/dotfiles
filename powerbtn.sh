#!/bin/sh
getuser ()
    {
     export DISPLAY=`echo $DISPLAY | cut -c -2`
     user=`who | grep " $DISPLAY" | awk '{print $1}' | tail -n1`
     export XAUTHORITY=/home/$user/.Xauthority
    }
getuser "$user"
DISPLAY=:0 urxvt -e /usr/local/bin/powerbutton-window

