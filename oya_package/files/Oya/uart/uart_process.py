import serial
import subprocess
import time
import os

ser=serial.Serial('/dev/ttyS0',115200)

pid = str(os.getpid())
pidFile = "/Oya/pid/uart_process"

file(pidFile, 'w').write(pid)

def main():
    while (1):
        input=ser.read(1)
        if(input == '\x81'):
            #print("mute")
            s=subprocess.call(['state','mute','get'])
            s=s.rstrip("\n")
            if(str(s) == "0"):
                #print("mute toggle to 1")
                subprocess.call(['state','mute','set','1'])
                subprocess.call(['state','mute','commit'])
            if(str(s) == "1"):
                #print("mute toggel to 0")
                subprocess.call(['state','mute','set','0'])
                subprocess.call(['state','mute','commit'])
        if(input == '\x82'):
            #print("poweroff")
            subprocess.call(['poweroff'])

if __name__ == "__main__":
    main()
