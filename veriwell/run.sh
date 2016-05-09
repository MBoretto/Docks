#!/bin/bash
docker run -it --rm \
   --name=veriwell \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -v `pwd`/exercise:/root/exercise \
   -e DISPLAY=unix$DISPLAY \
   -h veriwell cnt-veriwell

