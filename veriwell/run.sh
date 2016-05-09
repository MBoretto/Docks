#!/bin/bash
docker run -it --rm \
   --name=veriwell \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
	cnt-veriwell
