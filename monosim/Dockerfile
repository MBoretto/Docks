FROM fedora:20
LABEL maintainer="marco.bore@gmail.com"


# Install prerequisites.
RUN yum install @fonts monosim libusb libcanberra-gtk3 usbutils pcsc-tools\
    -y

#Adding some pfring include needed to compile
#ADD usr/include/linux/pf_ring.h /usr/include/linux/
#ADD usr/local/include/pfring.h /usr/local/include/

#installing DIM
#kkADD compileDIM.sh /compileDIM.sh

#update the locate db
#RUN updatedb

WORKDIR /root
#CMD /usr/bin/eclipse
