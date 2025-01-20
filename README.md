# pi
How to setup a raspberry pi as a flow meter.
Setup raspberry pi.
1.	Change hostname to raspberrypiX  ( where x is and integer) print label and put on raspberry pi.
2.	Enable spi bus.
3.	Enable vnc server.
4.	Enable Serial Port.
5.	Enable SSH.
6.	Disable serial console.
7.	Change screen resolution to max.
Change to VNCViewer.
The first stages have to be done by inserting an sd card into as pi, that has a monitor and keyboard attached. Once the hostname has been changed and the VNC server enabled it’s probably better to insert the SD card into the target, destination, pi and to use VNC viewer to do the final steps.
Update operating system.
sudo apt-get update
sudo apt-get upgrade

Copy All files to Pi Desktop.
libData.so, libCommon.so, Pr3.out, libSettings.so, layout2.glade, NewUSMeter.sh, usmsetup.sh, PrxStart.sh,  launch_pr3.desktop, master.zip
Install Necessary Libraries.
All libraries can be installed by executing usmsetup.sh.

Put USMeter files in the correct locations.
Execute NewUSMeter.sh

Turn off screen saver. (needed now Pr3 has interface)
sudo nano /etc/xdg/lxsession/LXDE-pi/autostart
Add the following 2 commands to what is already there:
@xset s off
@xset -dpms

Or create .xsessionrc file in home directory and put them there

Change SPI Buffer Size

Edit:  /boot/cmdline.txt and make buffer size to spidev.bufsiz=65536 
console=serial0,115200 console=tty1 root=PARTUUID=c38ea1f0-02 rootfstype=ext4 elevator=deadline fsck.repair=yes spidev.bufsiz=65536 rootwait quiet splash plymouth.ignore-serial-consoles

