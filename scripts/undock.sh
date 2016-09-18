#!/bin/bash
killall intel-virtual-output
sleep 2
optirun false
sleep 5
gsettings set org.gnome.desktop.interface text-scaling-factor 1.0
