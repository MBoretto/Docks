#!/bin/bash

#DOCKUSERNAME='developer'
#docker run -ti --rm \
#    -v `pwd`/${DOCKUSERNAME}:/home/${DOCKUSERNAME} \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=unix$DISPLAY \
#	na62-farm


docker run -it --rm \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
	root-cern

#docker run -it --rm \
#   --security-opt "apparmor:docker-ptrace" \
#   -v `pwd`/root:/root \
#   -v /tmp/.X11-unix:/tmp/.X11-unix \
#   -e DISPLAY=unix$DISPLAY \
#	na62-farm

#docker run -it --rm \
#   -v `pwd`/root:/root \
#   -v /tmp/.X11-unix:/tmp/.X11-unix \
#   -e DISPLAY=unix$DISPLAY \
#   --security-opt "apparmor:docker-ptrace" \
#	na62-farm

