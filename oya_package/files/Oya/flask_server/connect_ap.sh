#!bin/bash

uci set wireless.sta.ssid=$1
uci set wireless.sta.key=$3
uci set wireless.sta.encryption="psk2"
uci commit
wifi_mode sta
/etc/init.d/internet_status restart
