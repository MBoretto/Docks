FROM fedora:22
MAINTAINER Marco Boretto  marco.boretto@cern.ch

#uptating
RUN dnf update -y		&& \
	dnf clean all								

#installing Software
RUN	dnf install eclipse libcanberra-gtk3 -y

RUN dnf install wget tar file -y

RUN dnf install git gcc-c++ make -y

RUN dnf install tbb tbb-devel boost boost-devel glog glog-devel -y	
RUN dnf install gflags-devel cppzmq-devel libpcap libpcap-devel gperftools-libs -y


#Dowload Pfring include
RUN curl https://raw.githubusercontent.com/ntop/PF_RING/dev/kernel/linux/pf_ring.h -o pf_ring.h &&\
	mv pf_ring.h /usr/include/linux/

#installing DIM
RUN dnf install tcsh -y

USER root
ENV HOME /root

CMD /bin/bash
