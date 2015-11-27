FROM fedora:20
MAINTAINER Marco Boretto  marco.boretto@cern.ch


RUN yum install libXv mesa-libGL mesa-libGLU libXrandr libSM fontconfig \
	alsa-lib libXScrnSaver -y

RUN rpm -ivh https://vidyoportal.cern.ch/upload/VidyoDesktopInstaller-sl564-TAG_VD_3_3_0_027.rpm

EXPOSE [443, 17992, 17990, 50000-65535]

#CMD /bin/bash
CMD /opt/vidyo/VidyoDesktop/VidyoDesktop
