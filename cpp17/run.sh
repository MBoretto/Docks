#!/bin/bash

#DOCKUSERNAME='developer'
#docker run -ti --rm \
#    -v `pwd`/${DOCKUSERNAME}:/home/${DOCKUSERNAME} \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#	na62-farm

#docker run -it --rm  --name=na62-farm-run na62-farm
   #--security-opt "apparmor:docker-ptrace" \
   #--security-opt "apparmor:docker-ptrace" \
   #-v /tmp/.X11-unix:/tmp/.X11-unix \
   #-v /lib/modules:/lib/modules \
   #-v /usr/src:/usr/src \
   #-e DISPLAY=unix$DISPLAY \
   #-v `pwd`/root:/root \
docker run -it --rm \
   --name=cpp17 \
   -h cpp17 \
   -v `pwd`/root/data:/root/data \
   cnt-cpp17 \
   /bin/bash

#docker run -it --rm \
#   -v `pwd`/root:/root \
#   -v /tmp/.X11-unix:/tmp/.X11-unix \
#   -e DISPLAY=unix$DISPLAY \
#   --security-opt "apparmor:docker-ptrace" \
#	na62-farm

