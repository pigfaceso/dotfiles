#!/bin/sh

BAT0="/sys/class/power_supply/BAT0"
BAT1="/sys/class/power_supply/BAT1"

while true; do
  STATUS=""

  # Disk
  STATUS="$STATUS|:Disk $(df -h | grep home | awk '{print $3 "/" $2}') "

  # Memory
  STATUS="$STATUS|:Mem $(free -h | grep Mem | awk '{print $3 "/" $2}') "

  # Battery
  if [ -d ${BAT1} ]; then
    BAT1_CAPACITY=$(cat ${BAT1}/capacity)
    BAT1_STATUS=$(cat ${BAT1}/status)
    STATUS="$STATUS|:BAT1 ${BAT1_CAPACITY}% [${BAT1_STATUS}] "
  fi

  # Date
  STATUS="$STATUS|:$(date '+%Y-%m-%d %H:%M:%S') "

  echo ${STATUS}

  sleep 1
done
