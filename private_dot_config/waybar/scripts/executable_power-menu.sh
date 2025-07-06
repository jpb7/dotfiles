#!/usr/bin/bash

# Temporary script for basic power commands.

CHOICE=$(wofi --show dmenu --prompt "Power" <<EOF
Suspend
Reboot
Power off
EOF
)

case "$CHOICE" in
  Suspend)      systemctl suspend ;;
  Reboot)       systemctl reboot ;;
  "Power off")  systemctl poweroff ;;
esac
