#!bin/sh

led="0"

led=$((${led}|8))

d=`printf '%x\n' ${led}`
echo ${d}
