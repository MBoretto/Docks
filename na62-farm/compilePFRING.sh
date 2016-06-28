#!/bin/bash

wget 'downloads.sourceforge.net/project/ntop/PF_RING/PF_RING-6.4.1.tar.gz?r=&ts=1466602362&use_mirror=ufpr' -O PF_RING-6.4.1.tar.gz

echo "==> extracting"
tar -xzvf PF_RING-6.4.1.tar.gz
cd PF_RING-6.4.1
make

cd kernel; make install
cd ../userland/lib; make install

