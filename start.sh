#!/bin/bash
#Set the root password as root if not set as an ENV variable
export PASSWD=${PASSWD:=root}
#Set the root password
echo "root:$PASSWD" | chpasswd
#Spawn dropbear
dropbear -E 

#enable i2c access module in kernel if needed.
#modprobe i2c-bcm2708
#modprobe i2c-dev

#enable watchdog module in kernel if needed.
#modprobe bcm2708_wdog

#start your application from here...
python app/main.py
