#!/bin/sh

(cat /dev/ttyS2 > /Oya/uart/uartcommand.txt) & uart recieve pid set $!
