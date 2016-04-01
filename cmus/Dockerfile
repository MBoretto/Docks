FROM alpine:3.3
MAINTAINER Marco Boretto <marco.bore@gmail.com>

RUN echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories  
RUN apk add --update wget curl bash cmus \
    pulseaudio &&\
#RUN apk add --update wget curl bash &&\
  apk add -u musl && \
  rm -rf /var/cache/apk/*


#ADD container-files/ /


ENV \
    TERM=xterm \
    USER=marco \
    USERNAME=marco

CMD ["/bin/bash"]
