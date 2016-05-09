#!/bin/bash

#DOCKUSERNAME='developer'
#docker run -ti --rm \
#    -v `pwd`/${DOCKUSERNAME}:/home/${DOCKUSERNAME} \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#	na62-farm

#docker run -it --rm  --name=na62-farm-run na62-farm
   #--security-opt "apparmor:docker-ptrace" \
docker run -it --rm \
   --name=na62-farm-run \
   -h na62farm \ 
   -v `pwd`/root:/root \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
	na62-farm

#docker run -it --rm \
#   -v `pwd`/root:/root \
#   -v /tmp/.X11-unix:/tmp/.X11-unix \
#   -e DISPLAY=unix$DISPLAY \
#   --security-opt "apparmor:docker-ptrace" \
#	na62-farm

