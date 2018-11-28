#!/bin/sh

(cat /dev/ttyS0 > /Oya/uart/uartcommand) & uart recieve pid set $!
