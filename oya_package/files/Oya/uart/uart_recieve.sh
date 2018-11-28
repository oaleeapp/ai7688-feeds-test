#!/bin/sh

(cat /dev/ttyS0 > /Oya/uart/uartcommand.txt) & uart recieve pid set $!
