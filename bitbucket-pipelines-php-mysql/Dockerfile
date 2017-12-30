FROM alpine:3.7
MAINTAINER Marco Boretto <marco.bore@gmail.com>

RUN apk add --update bash git vim curl \
  nginx ca-certificates openssl openssh-client \
  php7-fpm php7-json php7-zlib php7-xml php7-phar php7-openssl \
  php7-pdo php7-pdo_mysql \
  php7-simplexml php7-tokenizer php7-xmlwriter php7-mbstring \
  php7-zip \
  php7-gd php7-iconv php7-mcrypt \
  php7-curl php7-dom php7-ctype \
  mariadb mariadb-client && \
  apk add -u musl && \
  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
  rm -rf /var/cache/apk/*








ENV TERM=xterm 

ADD container-files/ /

RUN \ 
  mkdir -p /run/mysqld/ \ 
  mkdir -p /var/log/ \ 
  mkdir -p /mysql/ \
  mkdir -p /var/log/binary-logs/




##composer
#ENV \
#    COMPOSER_HOME=/opt/composer \
#    COMPOSER_CACHE_DIR=/opt/composer/cache
#
#RUN mkdir -p /opt/composer/bin && \
#  set -o pipefail && \
#  curl -sS https://getcomposer.org/installer | php7 -- --install-dir=/opt/composer/bin --filename=composer

