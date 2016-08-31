FROM ubuntu:16.04
MAINTAINER Marco Boretto  marco.boretto@cern.ch marco.bore@gmail.com

RUN apt-get update
RUN apt-get install wget file mlocate vim htop unzip tar \
	texlive kile -y 
RUN apt-get install texlive-bibtex-extra -y
RUN apt-get install texlive-latex-extra -y
RUN apt-get clean

#update the locate db
RUN updatedb

RUN dbus-uuidgen > /var/lib/dbus/machine-id

WORKDIR /root
CMD /usr/bin/kile
