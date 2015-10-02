FROM fedora:22
MAINTAINER Marco Boretto  marco.boretto@cern.ch

#uptating
RUN dnf update -y														

#installing dependencies
RUN	dnf install git	-y													&& \	
	dnf install eclipse	-y												&& \
	dnf install tbb	-y													&& \
	dnf install boost -y												&& \
	dnf install glog -y

#acquiring software
RUN mkdir /workspace/													&& \
	cd /workspace/														&& \
	git clone https://github.com/NA62/na62-farm-lib.git					&& \
	git clone https://github.com/NA62/na62-trigger-algorithms.git		&& \
	git clone https://github.com/NA62/na62-trigger-test.git				&& \
	git clone https://github.com/NA62/na62-farm-lib-networking.git		&& \
	git clone https://github.com/NA62/na62-farm-dim-interface.git		&& \
	git clone https://github.com/NA62/na62-farm.git						&& \
	git clone https://github.com/NA62/na62-farm-merger.git				&& \
	git clone https://github.com/NA62/na62-farm-eob-collector.git		&& \
	git clone https://github.com/NA62/na62-farm-telsim.git				


# Replace (uid, gid) 1000 with your user / group 
#id your_username

RUN export uid=1001 gid=1001 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer

CMD /bin/bash
