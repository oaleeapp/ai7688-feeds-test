#!bin/sh
islinked=`state islinked get` #8
mute=`state mute get` #4
internet_status=`internet_status connected get` #2
recording=`state recording get` #1

led=0
if [ islinked == "1" ]; then
  led=$((${led}|8))
fi
if [ mute == "1" ]; then
  led=$((${led}|4))
fi
if [ internet_status == "1" ]; then
  led=$((${led}|2))
fi
if [ recording == "1" ]; then
  led=$((${led}|1))
fi

echo ${led} > /Oya/state/led

led_state=`printf '%x\n' ${led}`
echo ${led_state} > /Oya/state/led

uart send ${led_state}
