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
RUN dnf install gflags-devel -y
RUN dnf install mlocate -y
RUN dnf install cppzmq-devel -y
RUN dnf install libpcap -y





#Replace (uid, gid) 1000 with your user / group 
#id your_username

#RUN export uid=1001 gid=1001																	&& \
#	mkdir -p /home/developer																	&& \
#	echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd		&& \
#	echo "developer:x:${uid}:" >> /etc/group													&& \
#	echo "developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers									&& \
#	chmod 0440 /etc/sudoers																		&& \
#	chown ${uid}:${gid} -R /home/developer

#RUN export uid=0 gid=0
USER root
ENV HOME /root

CMD /bin/bash
