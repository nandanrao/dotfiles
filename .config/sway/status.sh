#!/bin/bash

function join_by { local IFS="$1"; shift; echo "$*"; }

battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)' | sort -rn | head -1)

if [ $battery_level -le 8 ]
then
  swaynag -t warning -m "Battery level is ${battery_level}%!"
fi

date_formatted=$(date "+%a %m-%d %H:%M")

batt_stats=$(acpi)

audio_volume=$(amixer -M get Master | awk '/Mono.+/ {print $4}' | tr -d [])

brightness=$(light -G | awk '{printf("%d",$1)}' | awk '{print $1"%"}' )


echo $date_formatted "                                                       "  "bright:" $brightness "  " $SEP "  " "volume:" $audio_volume "  " $SEP "  " $(join_by " " "${batt_stats}") "   "
