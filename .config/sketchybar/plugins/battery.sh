#!/usr/bin/env bash

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100) ICON="􀛨"
  ;;
  [6-8][0-9]) ICON="􀺸"
  ;;
  [3-5][0-9]) ICON="􀺶"
  ;;
  [1-2][0-9]) ICON="􀛩"
  ;;
  *) ICON="􀛪"
esac

[[ "${PERCENTAGE}" -gt 10 ]] && COLOR="0xffffffff" || COLOR="0xccff0e0e"

if [[ "$CHARGING" != "" ]]; then
  ICON="􀢋"
  COLOR="0xffffffff"
fi

# Normal: 0xcc86ec1a Green
# Low: 0xccff0e0e Red
# Charging: 0xb375cfff Blue

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" icon.color="$COLOR" label="${PERCENTAGE}%"
