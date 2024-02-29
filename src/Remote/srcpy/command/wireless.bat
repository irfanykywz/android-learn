@echo off

cd "scrcpy-win64-v2.3.1"

echo enable usb debugging you device
echo connect device use usb first for allow tcpip

set /p enabletcpip="Enable tcpip (y/n) ?"

if %enabletcpip% EQU "y" adb tcpip 5555

set ip="192.168.5.106"

if %ip% EQU "" set /p ip="Enter IP : "

adb connect %ip%:5555

scrcpy -e --video-bit-rate 2M --max-size 800

pause