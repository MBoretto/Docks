FROM fedora:22
MAINTAINER Marco Boretto  marco.boretto@cern.ch

RUN dnf update -y														&& \
	dnf install whatever -y

# Replace 1000 with your user / group id (id your_user_name)
# id your_user_name
RUN export uid=1001 gid=1001 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer

#Start the shell then you can run the programme
CMD /bin/bash
#Start the GUI programme
#CMD /bin/whatever
