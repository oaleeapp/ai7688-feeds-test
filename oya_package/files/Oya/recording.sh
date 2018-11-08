#!/bin/bash

get_filename() {
  DID=`device_id get`
  datetime=`date +%s`
  printf "/%s_%s_%07d.wav" $DID $datetime $1
}

(
i=1
recDuration=`recording duration get`
recDestination=`recording destination get`
uploadDirectory=`uploading directory get`
while true
do
    sleep 1
    lastRecordedTime=`date +%s`
    recording lastRecordedTime set ${lastRecordedTime}
    fileName=$(get_filename "$i")
    arecord -f s16_le -r16000 -c2 -t wav -M $recDestination$fileName & arpid=$!; recording apid set $arpid
    sleep $recDuration
    mv $recDestination$fileName $uploadSource$fileName
    kill `recording apid get`
    i=$((i+1))
done
) & recording pid set $!
