#!/bin/bash
echo 'Building container...'
docker build -t root-cern .
echo 'Type ./run to start the container...'
