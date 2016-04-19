FROM fedora:21
MAINTAINER Marco Boretto  marco.boretto@cern.ch marco.bore@gmail.com


RUN yum install wget tar file mlocate vim htop unzip \
    libX11 libXext libXpm libXft \
    git gcc-c++ make -y

RUN wget https://root.cern.ch/download/root_v6.04.14.Linux-fedora21-x86_64-gcc4.9.tar.gz

CMD /bin/bash
