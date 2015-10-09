FROM fedora:20
MAINTAINER Marco Boretto  marco.boretto@cern.ch

# Please notice that the UID and likely the GID must accord with the permissions of the sockets
# stored in /tmp/.X11-unix. 
# Please configure them under your needs.
#ENV UID="1001" GID="1001" DEVELOPER="developer" PASSWD="myfancypassword"
#ENV HOME="/home/$DEVELOPER"

#RUN yum update -y       && \ 
#    yum clean all  


RUN yum install libXv mesa-libGL mesa-libGLU libXrandr libSM fontconfig -y
RUN yum install alsa-lib -y
RUN yum install libXScrnSaver -y
RUN rpm -ivh https://vidyoportal.cern.ch/upload/VidyoDesktopInstaller-sl564-TAG_VD_3_3_0_027.rpm



#Start the shell then you can run the programme
#CMD /bin/bash
#Start the GUI programme
CMD /opt/vidyo/VidyoDesktop/VidyoDesktop
