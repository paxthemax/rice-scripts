#!/bin/env bash
#
## powermenu.sh
# Power/logoff/restart rofi script.

case $(printf "Logout\nReboot\nPoweroff" | rofi -dmenu -p "Leave session?") in
	Logout)		swaymsg exit ;;	# Exit sway and terminate session.
	Reboot)		reboot ;; 	# Run halt --reboot. 
	Poweroff)	poweroff ;;	# Run halt --poweroff.
esac

