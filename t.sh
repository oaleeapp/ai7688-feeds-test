#!bin/sh

led="0"

led=$((${led}|8))

d=`printf '%x\n' ${led}`
echo ${d}

s=1
if [ $((${s} & 1)) == "1" ]; then
echo "yes"
fi
