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
RUN	dnf install eclipse libcanberra-gtk3 \
    wget tar file mlocate htop vim\
    psmisc procps-ng \
    net-tools iputils nc \
	git -y 


#update the locate db
RUN updatedb

#RUN groupadd -g$GID -f developers && \
#   useradd -g$GID -u$UID -d $HOME -p $PASSWD $DEVELOPER && \
#   usermod $DEVELOPER -a -G wheel
#USER $DEVELOPER
#WORKDIR $HOME

WORKDIR /root
CMD /bin/bash
