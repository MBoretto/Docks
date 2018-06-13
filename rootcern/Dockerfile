FROM centos:7
#FROM fedora:25
LABEL maintainer="marco.bore@gmail.com"

RUN yum -y install epel-release
RUN yum -y install wget tar file mlocate vim htop unzip \
    libX11 libXext libXpm libXft \
    python python-devel libxml2-devel\
    git gcc-c++ make cmake3 \
    libX11-devel libXpm-devel libXft-devel libXext-devel
#sudo yum install git cmake gcc-c++ gcc binutils \
#libX11-devel libXft-devel libXext-devel
RUN yum -y install opencv-devel
RUN yum -y install cabextract xorg-x11-font-utils fontconfig


RUN localedef -i en_US -f UTF-8 en_US.UTF-8 \
    && export LANG=en_US.UTF-8 \
    && export LANGUAGE=en_US:en \
    && export LC_ALL=en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8


RUN ln -s /usr/bin/cmake3 /usr/bin/cmake

RUN curl https://root.cern.ch/download/root_v6.08.04.source.tar.gz -o /root/root-cern.tar.gz \
   && tar xzf /root/root-cern.tar.gz -C /root
   #&& ./configure --prefix=/usr/local --minimal --disable-x11 \
RUN cd /root/root-6.08.04  \
   && ./configure --prefix=/usr/local \
           --enable-astiff --enable-builtin-afterimage --enable-builtin_ftgl --enable-builtin_glew --enable-builtin_pcre --enable-builtin-lzma \
           --enable-python --enable-roofit --enable-xml --enable-minuit2 \
           --disable-xrootd --fail-on-missing

RUN cd /root/root-6.08.04 \
   make -j4 \
   && make install

RUN \
   echo "/usr/local/lib/root" > /etc/ld.so.conf.d/root.conf \
   && echo  "include /etc/ld.so.conf.d/*.conf" > /etc/ld.so.conf \
   && ldconfig


RUN yum -y install urw-fonts

CMD /bin/bash
