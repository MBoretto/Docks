#!/bin/bash

docker run -it --rm \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
	root-cern

