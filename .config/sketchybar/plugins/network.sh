#!/usr/bin/env bash

# Load my resources
source="$HOME/.config/sketchybar/mResources/mDefaults.sh"
source="$HOME/.config/sketchybar/mResources/mIcons.sh"
source="$HOME/.config/sketchybar/mResources/mColors.sh"

sleep 1

services=$(networksetup -listnetworkserviceorder)
device=$(scutil --nwi | sed -n "s/.*Network interfaces: \([^,]*\).*/\1/p")

test -n "$device" && service=$(echo "$services" \
  | sed -n "s/.*Hardware Port: \([^,]*\), Device: $device.*/\1/p")

color=$PASTELGREEN
case $service in
  "iPhone USB")         icon=􀟜;;
  "Thunderbolt Bridge") icon=􀒗;;

  Wi-Fi)
    ssid=$(networksetup -getairportnetwork "$device" \
      | sed -n "s/Current Wi-Fi Network: \(.*\)/\1/p")
    case $ssid in
      *iPhone*) icon=􀉤;;
      "")       icon=􀙇; color=$GRAYLITE;;
      *)        icon=􀙇;;
    esac;;

  *)
    wifi_device=$(echo "$services" \
      | sed -n "s/.*Hardware Port: Wi-Fi, Device: \([^\)]*\).*/\1/p")
    test -n "$wifi_device" && status=$( \
      networksetup -getairportpower "$wifi_device" | awk '{print $NF}')
    icon=$(test "$status" = On && echo "􀙇" || echo "􀙈")
    color=$GRAYLITE;;
esac

sketchybar --animate sin 5 --set "$NAME" icon="$icon" icon.color="$color"
