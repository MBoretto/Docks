#!/bin/bash
echo 'Building container...'
docker build -t cnt-bwallet .
echo 'Type ./run.sh to start the container...'
