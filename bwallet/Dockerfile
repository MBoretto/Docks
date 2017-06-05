FROM ubuntu:17.04
LABEL maintainer="marco.bore@gmail.com"

# Update system... 
# Please notice that this is in general not recomendable, 
# since you are not controlling which version of the software 
# will be installed on your system.
# This may cause not predictable misbehaviours.
#RUN dnf update -y && dnf clean all

# Install prerequisites.
RUN apt-get update
RUN apt-get install software-properties-common  -y
RUN add-apt-repository ppa:bitcoin/bitcoin -y
RUN apt-get update
RUN apt install bitcoin-qt bitcoind -y

#update the locate db
#RUN dbus-uuidgen > /var/lib/dbus/machine-id

CMD /bin/bash
