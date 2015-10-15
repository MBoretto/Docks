FROM fedora:22
MAINTAINER Marco Boretto  marco.boretto@cern.ch

# Please notice that the UID and likely the GID must accord with the permissions of the sockets
# stored in /tmp/.X11-unix. 
# Please configure them under your needs.
#ENV UID="1001" GID="1001" DEVELOPER="developer" PASSWD="myfancypassword"
#ENV HOME="/home/$DEVELOPER"

# Update system... 
# Please notice that this is in general not recomendable, 
# since you are not controlling which version of the software 
# will be installed on your system.
# This may cause not predictable misbehaviours.
#RUN dnf update -y && dnf clean all

# Install prerequisites.
RUN	dnf install eclipse libcanberra-gtk3 -y

RUN dnf install wget tar file mlocate \
	git gcc-c++ make \
	tbb tbb-devel boost boost-devel \
	glog glog-devel gflags-devel \
	cppzmq-devel libpcap libpcap-devel \
	gperftools gperftools-libs \ 
#Those are required from DIM
	tcsh motif-devel -y

#Adding some pfring.h file needed 
#Dowload Pfring include
#RUN curl https://raw.githubusercontent.com/ntop/PF_RING/dev/kernel/linux/pf_ring.h -o pf_ring.h &&\
#Adding some pfring include
#RUN mkdir -p /usr/include/linux/  && \
#	mkdir -p /usr/local/include/ 

ADD usr/include/linux/pf_ring.h /usr/include/linux/
ADD usr/local/include/pfring.h /usr/local/include/


#installing DIM
ADD compileDIM /compileDIM

#DIM is compiled in  tcsh environment as described in the documentation
RUN ./compileDIM && \
#a sort of make install
	cp -R /dim_v20r15/dim/ /usr/local/include/ && \
	cp /dim_v20r15/obj/libdim.* /usr/local/lib/


#update the locate db
RUN updatedb

#RUN groupadd -g$GID -f developers && \
#   useradd -g$GID -u$UID -d $HOME -p $PASSWD $DEVELOPER && \
#   usermod $DEVELOPER -a -G wheel
#USER $DEVELOPER
#WORKDIR $HOME

#TODO Add this in the bottom when you have time to rebuilt everthing
RUN dnf install procps-ng net-tools htop tcpreplay -y
#TODO

WORKDIR /root
CMD /bin/bash
