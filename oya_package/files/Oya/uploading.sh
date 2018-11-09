#!/bin/sh

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
