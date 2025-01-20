#!/bin/bash

echo "Install pigpio"

# wget https://github.com/joan2937/pigpio/archive/master.zip
unzip master.zip
cd pigpio-master
make all
sudo make install

echo "install xml libs"

sudo apt-get install libmxml-dev

echo "install archiver"

sudo apt-get install libarchive-dev

echo "install Gtk+3.0"

sudo apt-get install libgtk-3-dev 
