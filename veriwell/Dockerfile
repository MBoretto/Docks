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
RUN dnf install wget file mlocate vim htop unzip tar\
    psmisc procps-ng \
    git gcc-c++ make cmake\
    valgrind gdb \
    gtkwave libcanberra-gtk3 \
    gperf help2man bison zlib-devel bzip2-devel -y \ 
    && dnf clean all

ADD compileVeriWell.sh /compileVeriWell.sh
RUN /compileVeriWell.sh

#update the locate db
RUN updatedb
RUN dbus-uuidgen > /var/lib/dbus/machine-id

WORKDIR /root
CMD /bin/bash
