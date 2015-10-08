FROM fedora:22
MAINTAINER Marco Boretto  marco.boretto@cern.ch

# Update system... 
# Please notice that this is in general not recomendable, 
# since you are not controlling which version of the software 
# will be installed on your system.
# This may cause not predictable misbehaviours.
RUN dnf update -y && dnf clean all

# Install prerequisites.
RUN	dnf install eclipse libcanberra-gtk3 -y

RUN dnf install wget tar file -y

RUN dnf install git gcc-c++ make -y

RUN dnf install \
	tbb tbb-devel boost boost-devel \
	glog glog-devel gflags-devel \
	cppzmq-devel libpcap libpcap-devel \
	gperftools-libs -y 

#Dowload Pfring include
RUN curl https://raw.githubusercontent.com/ntop/PF_RING/dev/kernel/linux/pf_ring.h -o pf_ring.h &&\
	mv pf_ring.h /usr/include/linux/

#installing DIM
RUN dnf install tcsh -y
RUN dnf install motif-devel -y


# Please notice that the UID and likely the GID must accord with the permissions of the sockets
# stored in /tmp/.X11-unix. 
# Please configure them under your needs.
ENV UID="1001" GID="1001" DEVELOPER="developer" PASSWD="myfancypassword"
ENV HOME="/home/$DEVELOPER"

RUN groupadd -g$GID -f developers && \
   useradd -g$GID -u$UID -d $HOME -p $PASSWD $DEVELOPER && \
   usermod $DEVELOPER -a -G wheel

USER $DEVELOPER

CMD /bin/bash
