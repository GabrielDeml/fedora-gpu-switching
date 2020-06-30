#!/bin/bash
PATTERN="yes"
FILE="/etc/X11/xorg.conf.d/nvidia.conf"
if grep -q $PATTERN $FILE
then
    sed -i 's/yes/no/g' /etc/X11/xorg.conf.d/nvidia.conf
else
    sed -i 's/no/yes/g' /etc/X11/xorg.conf.d/nvidia.conf
fi


