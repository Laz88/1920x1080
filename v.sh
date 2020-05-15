#!/bin/bash

##########################
# README FOR NEW USERS   #
##########################
#
#	Run this command:
# 	bash <(wget -O - https://raw.githubusercontent.com/Laz88/1920x1080/master/v.sh)
#
##########################
# SCRIPT BEGINS HERE     #
##########################

# Step 0: verify the user is not root (or else the script will fail)

if [ "$USER" == root ]; then
	echo "[USER check] = Failed"
	echo "Error -- this script cannot be executed with sudo. Try ./ instead."
	echo "Exiting..."
	exit
else
	echo "[USER check] = $USER"
fi

xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode Virtual1 1920x1080
xrandr --output Virtual1 --mode 1920x1080

echo "Enjoy your 1920x1080 resolution."
