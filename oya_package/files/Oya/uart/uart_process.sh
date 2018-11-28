#!/bin/sh

(
while true
do
  uartcommand=`uart read`
  #to see if there are any commands from the MCU
  #Possible commands
  #0x01 - mute
  #0x02 - poweroff
  if [ $((${uartcommand} & 1 )) == 1 ]; then
    muteState=`state mute get`
    if [ ${muteState} == "1" ]; then
      #state mute set 0
      #state mute commit
      echo "mute toggle to 0"
    else
      #state mute set 1
      #state mute commit
      echo "mute toggle to 1"
    fi
  elif [ $((${uartcommand} & 2 )) == 2 ]; then
    #initiate power off sequence
    #poweroff
    echo "poweroff"
  fi
done
) & uart process pid set $!
