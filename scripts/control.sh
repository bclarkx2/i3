#!/bin/bash

if [[ -z "$1" ]] ; then
    return
elif [[ "$1" == "suspend" ]] ; then
    systemctl suspend
elif [[ "$1" == "halt" ]] ; then
    shutdown -h now
elif [[ "$1" == "logout" ]] ; then
    i3-msg exit
elif [[ "$1" == "restart" ]] ; then
    shutdown -r now
elif [[ "$1" == "lock" ]] ; then
    gnome-screensaver-command -l
fi

