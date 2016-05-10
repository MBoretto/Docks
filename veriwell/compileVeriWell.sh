#!/bin/bash
#Install veri well on the system

wget http://iweb.dl.sourceforge.net/project/veriwell/VeriWell/Veriwell%202.8.7/veriwell-2.8.7.tar.gz
if [ $? -ne 0 ]; then
    echo '=> Unable to download the file.. exiting'
	exit 1
fi

tar -xvzf veriwell-2.8.7.tar.gz
if [ $? -ne 0 ]; then
    echo '=> Unable to unzip the file.. exiting'
	exit 1
fi

cd veriwell-2.8.7 && ./configure && make && make install
if [ $? -ne 0 ]; then
    echo '=> Unable to compile the file.. exiting'
	exit 1
fi

echo '=> Veriwell has been installed!'
