#!/bin/sh

# Checks for files in the flash memory (which is where it was designed to be saved if the SD card failed (SD card check not implemented)) and the SD card
# and uploads to the API dummyres on the backend

# Refer to '/usr/bin/uploading' and `/etc/init.d/uploading` for more information

(
uploadRootDirectory="/root/uploadAudio"
uploadSDDirectory="/Media/SD-P1/uploadAudio"

uploadURL=`uploading uploadURL get`
while true
do
    list=$(ls ${uploadRootDirectory}/*.wav 2>/dev/null)

    if [ "$list" != "" ]; then
      for fullname in $list; do
        file=${fullname##*/}
        ret=$(curl --data-binary @/root/uploadAudio/${file} --write-out "%{http_code}" -H 'Content-Type: audio/wav' ${uploadURL}${file})
        if [ "$ret" != "200" ]; then
          rm $fullname
        else
          rm $fullname
          lastUploadedTime=`date +%s`
          uploading lastUploadedTime set ${lastUploadedTime}
        fi
      done
    fi

    list=$(ls ${uploadSDDirectory}/*.wav 2>/dev/null)

    if [ "$list" != "" ]; then
      for fullname in $list; do
        file=${fullname##*/}
        ret=$(curl --data-binary @/root/uploadAudio/${file} --write-out "%{http_code}" -H 'Content-Type: audio/wav' ${uploadURL}${file})
        if [ "$ret" != "200" ]; then
          rm $fullname
        else
          rm $fullname
          lastUploadedTime=`date +%s`
          uploading lastUploadedTime set ${lastUploadedTime}
        fi
      done
    fi
done
) & uploading pid set $!
