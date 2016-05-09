#!/bin/bash
docker run -it --rm \
   --name=latex \
   -v `pwd`/root:/root \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -e DISPLAY=unix$DISPLAY \
   -h latex cnt-latex

