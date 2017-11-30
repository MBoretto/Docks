#!/bin/bash
echo 'Building container...'
docker build -t cnt-cpp17 .
echo 'Type ./run.sh to start the container...'
