FROM fedora:23
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
    psmisc procps-ng \
    bind-utils net-tools tcpreplay pcapfix nc \
    git gcc-c++ make cmake\
    valgrind gdb \
    tbb tbb-devel boost boost-devel \
    glog glog-devel gflags-devel \
    cppzmq-devel libpcap libpcap-devel \
    gperftools gperftools-libs \
    eclipse libcanberra-gtk3 \
    #This is required from DIM
    motif-devel \
    #Those are required from pfring
    flex bison \
    # Needed by the custom xml parser
    libxslt-devel libxml++-devel libxml2-devel \
    -y

#due to a docker bug problem wireshark is not working
RUN dnf install wireshark -y
#wireshark provided by seems not work..
#RUN rpm -ivh ftp://fr2.rpmfind.net/linux/fedora/linux/updates/testing/22/x86_64/w/wireshark-1.12.8-1.fc22.x86_64.rpm


#Adding some pfring include needed to compile
ADD usr/include/linux/pf_ring.h /usr/include/linux/
ADD usr/local/include/pfring.h /usr/local/include/

#installing DIM
ADD compileDIM.sh /compileDIM.sh

#DIM is compiled in  tcsh environment as described in the official documentation
RUN ./compileDIM.csh && \
#a sort of make install
	cp -R /dim_v20r15/dim/ /usr/local/include/ && \
	cp /dim_v20r15/obj/libdim.* /usr/local/lib/

#Move farm configuration files
ADD etc/na62-farm.cfg /etc/na62-farm.cfg
ADD etc/na62-trigger.conf /etc/na62-trigger.conf

ADD compilePFRING.sh /compilePFRING.sh

#update the locate db
RUN updatedb

WORKDIR /root
CMD /usr/bin/eclipse
