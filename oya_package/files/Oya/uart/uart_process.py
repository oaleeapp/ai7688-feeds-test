import serial
import subprocess
import time

ser=serial.Serial('/dev/ttyS0',115200)

pid = str(os.getpid())
pidFile = "/Oya/pid/uart_process"

file(pidFile, 'w').write(pid)

def main():
    while (1):
        input=ser.read()
        if(int(input) == 1):
            print("mute")
            #subprocess.call(['state','mute','set','1'])
            #subprocess.call(['state','mute','commit'])
        if(int(input) == 2):
            print("poweroff")
            #subprocess.call(['poweroff'])

if __name__ == "__main__":
    main()
