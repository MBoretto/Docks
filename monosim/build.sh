#!/bin/bash
echo 'Building container...'
docker build -t cnt-monosim .
echo 'Type ./run.sh to start the container...'
