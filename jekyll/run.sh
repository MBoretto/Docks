#!/bin/bash
echo 'Building container...'
docker build -t cnt-jekyll .
docker run -it --rm \
   -p 4000:4000 \
   --name=jekyll \
   -v `pwd`/file:/file \
   -w "/file" \
   -h jekyll \
   cnt-jekyll \
   /bin/sh


