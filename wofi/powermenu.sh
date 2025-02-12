#!/bin/bash

# Options
options="shutdown\nreboot\nsleep\nlogout\ncancel"

# Use wofi to display the options
choice=$(echo -e "$options" | wofi -s ~/.config/wofi/config.css --height 152 --width 20 -y 0 -x 0 --show dmenu --prompt "Power Menu")

# Act on the selected option
case "$choice" in
  "shutdown") systemctl poweroff ;;
  "reboot") systemctl reboot ;;
  "sleep") systemctl suspend ;;
  "logout") swaymsg exit ;;
  *) exit 0 ;;
esac
