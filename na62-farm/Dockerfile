FROM fedora:22
MAINTAINER Marco Boretto  marco.boretto@cern.ch
# Please notice that the UID and likely the GID must accord with the permissions of the sockets
# stored in /tmp/.X11-unix. 
# Please configure them under your needs.
ENV UID="1000" GID="1000" DEVELOPER="developer" PASSWD="myfancypassword"
ENV HOME="/home/$DEVELOPER"

# Update system... 
# Please notice that this is in general not recomendable, 
# since you are not controlling which version of the software 
# will be installed on your system.
# This may cause not predictable misbehaviours.

RUN dnf update -y && dnf clean all     && \
# Install prerequisites.
    dnf install -y eclipse libcanberra-gtk3  \
       wget tar file git gcc-c++ make tbb \
       tbb-devel boost boost-devel glog   \
       glog-devel

RUN groupadd -g$GID -f developers && \
   useradd -g$GID -u$UID -d $HOME -p $PASSWD $DEVELOPER && \
   usermod $DEVELOPER -a -G wheel

USER $DEVELOPER
CMD /bin/bash
