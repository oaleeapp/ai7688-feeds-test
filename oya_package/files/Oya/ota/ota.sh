#!/bin/sh

otaurl=`ota url get`

#downlaod the .bin file
curl ${otaurl} --output /tmp/openwrt-ramips-mt7688-LinkIt7688-squashfs-sysupgrade.bin

#stop all running processes
/etc/init.d/recording stop
/etc/init.d/uploading stop
/etc/init.d/mqtt stop
/etc/init.d/flask_server stop
/etc/init.d/internet_status stop
/etc/init.d/uart stop

#save relevent configuration to a .config file

sleep 1
#use sysupgrade to update the firmware
sysupgrade -v /tmp/openwrt-ramips-mt7688-LinkIt7688-squashfs-sysupgrade.bin
