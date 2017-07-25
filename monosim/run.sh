#!/bin/bash

#docker run -t -i --device=/dev/ttyUSB0 ubuntu bash


   #--device=/dev/bus/usb/001 \
docker run -it --rm \
   --name=monosim \
   --privileged -v /dev/bus/usb:/dev/bus/usb \
   -v `pwd`/driver:/root/driver \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
   -h monosim \
   cnt-monosim \
   /bin/bash


