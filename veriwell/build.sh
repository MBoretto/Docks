#!/bin/bash
echo 'Building container...'
docker build -t cnt-veriwell .
echo 'Type ./run.sh to start the container...'
