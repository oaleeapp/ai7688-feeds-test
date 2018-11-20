#!/bin/sh

(
while True
do
  uartcommand=`uart read`
done
) & uart process pid set $!
