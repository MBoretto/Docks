FROM fedora:27
MAINTAINER Marco Boretto  marco.boretto@cern.ch marco.bore@gmail.com

# Update system... 
# Please notice that this is in general not recomendable, 
# since you are not controlling which version of the software 
# will be installed on your system.
# This may cause not predictable misbehaviours.
#RUN dnf update -y && dnf clean all

# Install prerequisites.
RUN dnf remove vim-minimal -y
RUN dnf install wget tar file mlocate vim htop unzip\
    git gcc-c++ make cmake3\
    valgrind gdb \
    tbb tbb-devel boost boost-devel \
    glog glog-devel gflags-devel \
    cppzmq-devel libpcap libpcap-devel \
    gperftools gperftools-libs \
    -y

#update the locate db
RUN updatedb

WORKDIR /root
