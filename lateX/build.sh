#!/bin/bash
echo 'Building container...'
docker build -t cnt-latex .
echo 'Type ./run.sh to start the container...'
