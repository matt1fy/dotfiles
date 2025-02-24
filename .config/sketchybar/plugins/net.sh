#!/usr/bin/env bash

# Loading my colors icons and defaults
source "$HOME/.config/sketchybar/mResources/mColors.sh"
source "$HOME/.config/sketchybar/mResources/mIcons.sh"
source "$HOME/.config/sketchybar/mResources/mDefaults.sh"

# When switching between devices, it's possible to get hit with multiple
# concurrent events, some of which may occur before `scutil` picks up the
# changes, resulting in race conditions.
sleep 1

services=$(networksetup -listnetworkserviceorder)
device=$(scutil --nwi | sed -n "s/.*Network interfaces: \([^,]*\).*/\1/p")

test -n "$device" && service=$(echo "$services" \
  | sed -n "s/.*Hardware Port: \([^,]*\), Device: $device.*/\1/p")

color=$PASTELGREEN
case $service in
  "iPhone USB")         icon=$NET_USB;;
  "Thunderbolt Bridge") icon=$NET_THUNDERBOLT;;

  Wi-Fi)
    ssid=$(networksetup -getairportnetwork "$device" \
      | sed -n "s/Current Wi-Fi Network: \(.*\)/\1/p")
    case $ssid in
      *iPhone*) icon=$NET_HOTSPOT;;
      "")       icon=$NET_DISCONNECTED; color=$HOTRED;;
      *)        icon=$NET_WIFI;;
    esac;;

  *)
    wifi_device=$(echo "$services" \
      | sed -n "s/.*Hardware Port: Wi-Fi, Device: \([^\)]*\).*/\1/p")
    test -n "$wifi_device" && status=$( \
      networksetup -getairportpower "$wifi_device" | awk '{print $NF}')
    icon=$(test "$status" = On && echo "$NET_DISCONNECTED" || echo "$NET_OFF")
    color=$HOTRED;;
esac

sketchybar --animate sin 5 --set "$NAME" icon="$icon" icon.color="$color" icon.padding_left=5 icon.padding_right=5
