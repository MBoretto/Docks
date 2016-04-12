#!/bin/bash

echo 'Creating Shared home...'
BASEDIR=`pwd`
DOCKUSERNAME='root'
#DOCKUSERNAME='developer'
HOSTHOME=${BASEDIR}/${DOCKUSERNAME}

if [ -d "${HOSTHOME}/workspace" ]; then
	echo ${HOSTHOME}"/workspace Already Exist! Delete to reinstall"
else

    #acquiring software
    mkdir -p ${HOSTHOME}/workspace/ && \
    cd ${HOSTHOME}/workspace/
    echo 'Fetching remote Na62 Repository...'
    git clone https://github.com/NA62/na62-farm-lib.git
    git clone https://github.com/NA62/na62-trigger-algorithms.git
    git clone https://github.com/NA62/na62-trigger-test.gi
    git clone https://github.com/NA62/na62-farm-lib-networking.git
    git clone https://github.com/NA62/na62-farm-dim-interface.git
    git clone https://github.com/NA62/na62-farm.git
    git clone https://github.com/NA62/na62-farm-merger.git
    git clone https://github.com/NA62/na62-farm-telsim.git
    git clone https://github.com/NA62/na62-farm-monitor-collector.git
    #trigger test
    git clone https://github.com/NA62/na62-trigger-test.git
    #Script
    git clone https://github.com/NA62/na62-farm-misc.git
    cd ${BASEDIR}
    #start to build the container
    ./build.sh
fi
