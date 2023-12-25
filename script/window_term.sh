#!/bin/sh
#
# Dash compatible
#
# Show/Hide terminal.
# Add a shortcut to this script (for example F12).
#
app_exec=konsole

win_active=$(xdotool getactivewindow)
app_id=$(wmctrl -l | grep -i $app_exec | awk '{print $1}')
app_win=$(printf '%d' "$app_id")

if [ -z "$app_id" ]; then
  $app_exec
  exit 0
fi

if [ "$win_active" -eq "$app_win" ]; then
  xdotool windowminimize "$app_win"
else
  xdotool windowactivate "$app_win"
fi
