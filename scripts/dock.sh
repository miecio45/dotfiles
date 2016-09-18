#!/bin/bash
modprobe bbswitch
sleep 5
intel-virtual-output
sleep 5
gsettings set org.gnome.desktop.interface text-scaling-factor 0.78

