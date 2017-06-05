#!/bin/bash
docker run -it --rm \
   --name=bwallet \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
   -h bwallet cnt-bwallet

   #-v `pwd`/exercise:/root/exercise \
