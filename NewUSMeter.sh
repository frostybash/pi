#!/bin/bash

if [! -d "/home/pi/USMeter" ] 
then
    echo "Directory /home/pi/USMeter DOES NOT exists making directory." 
    mkdir /home/pi/USMeter 
fi

if [! -d "/home/pi/.config/autostart" ] 
then
    echo "Directory /home/pi/.config/autostart DOES NOT exists making directory." 
    mkdir -p /home/pi/.config/autostart 
fi

echo "Kill existing processes"

sudo pkill -f Pr3.out
#sudo pkill -f Pr1.out

echo "Remove old binaries"
rm /home/pi/USMeter/Pr*.out
sudo rm /usr/lib/libCommon.so
sudo rm /usr/lib/libData.so 
sudo rm /usr/lib/libSettings.so

chmod 777 /home/pi/Desktop/*.*

echo "Copy all files"
mv /home/pi/Desktop/*.out /home/pi/USMeter/
cp -f /home/pi/Desktop/layout2.glade /home/pi/USMeter/.
cp -f /home/pi/Desktop/launch_pr3.desktop /home/pi/.config/autostart/.
cp -f /home/pi/Desktop/PrxStart.sh /home/pi/.

sudo mv /home/pi/Desktop/lib*.so /usr/lib/



