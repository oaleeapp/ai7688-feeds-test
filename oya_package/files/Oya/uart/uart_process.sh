#!/bin/sh

(
while true
do
  uartcommand=`uart read`
  #to see if there are any commands from the MCU
  #Possible commands
  #0x01 - mute
  #0x02 - poweroff
  if [ ${uartcommand} & \x01 ]; then
    muteState=`state mute get`
    if [ ${muteState} == "1" ]; then
      state mute set 0
      state mute commit
    else
      state mute set 1
      state mute commit
    fi
  elif [ ${uartcommand} & \x02 ]; then
    #initiate power off sequence
    poweroff
  fi
done
) & uart process pid set $!
