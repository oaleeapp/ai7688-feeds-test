#!/bin/bash

# Gets the duration set for recording and destination folder for saving the recorded files from the relevant config files
# Records for the set duration and saves the filename in the format deviceID_timestamp_serialnumber.wav
# Config files are saved under /Oya/recording
# refer to /usr/bin/recording for information on `recording duration get` and `recording destination get` functions


get_filename() {
  DID=`device_id get`
  datetime=`date +%s`
  printf "/%s_%s_%07d.wav" $DID $datetime $1
}

(
i=1
recDuration=`recording duration get`
recDestination=`recording destination get`
uploadDirectory="/Media/SD-P1/uploadAudio"
while true
do
    sleep 1
    lastRecordedTime=`date +%s`
    recording lastRecordedTime set ${lastRecordedTime}
    fileName=$(get_filename "$i")
    arecord -f s16_le -r16000 -c2 -t wav -M $recDestination$fileName & arpid=$!; recording apid set $arpid
    sleep $recDuration
    mv $recDestination$fileName $uploadDirectory$fileName
    kill `recording apid get`
    i=$((i+1))
done
) & recording pid set $!
