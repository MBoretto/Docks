FROM fedora:20
MAINTAINER Marco Boretto  marco.boretto@cern.ch

RUN yum update -y       && \ 
    yum clean all  

#ENV FILENAME VidyoDesktopInstaller-sl564-TAG_VD_3_3_0_027.rpm
#ENV LINK https://vidyoportal.cern.ch/upload/${FILENAME}
#
#RUN curl ${LINK} -o ${FILENAME}
#RUN chmod 755  ${FILENAME}
#RUN rpm –i ${FILENAME}

RUN yum install libXv mesa-libGL mesa-libGLU libXrandr libSM fontconfig -y
RUN yum install alsa-lib -y
RUN yum install libXScrnSaver -y
RUN rpm -ivh https://vidyoportal.cern.ch/upload/VidyoDesktopInstaller-sl564-TAG_VD_3_3_0_027.rpm



#Start the shell then you can run the programme
CMD /bin/bash
#Start the GUI programme
#CMD /bin/whatever
