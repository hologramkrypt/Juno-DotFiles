#!/bin/bash

# Define options
options="  Lock\n⏾  Suspend\n🔄  Reboot\n⏻  Poweroff\n📥  Logout"

# Show menu with Wofi
choice=$(echo -e "$options" | wofi --dmenu --style ~/.config/wofi/style.css --prompt "Power Menu")

case "$choice" in
    "  Lock") 
        swaylock ;;
    "⏾  Suspend") 
        systemctl suspend ;;
    "🔄  Reboot") 
        systemctl reboot ;;
    "⏻  Poweroff") 
        systemctl poweroff ;;
    "📥  Logout") 
        hyprctl dispatch exit ;;
esac

