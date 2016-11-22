FROM alpine:3.4
MAINTAINER Marco Boretto <marco.bore@gmail.com>

RUN apk add --update bash git vim curl \
  nginx ca-certificates openssl openssh-client \
  php5-fpm php5-json php5-zlib php5-xml php5-phar php5-openssl \
  php5-pdo php5-pdo_mysql \
  php5-gd php5-iconv php5-mcrypt \
  php5-curl php5-dom php5-ctype && \
  mariadb mariadb-client && \
  apk add -u musl && \
  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
  rm -rf /var/cache/apk/*

ENV \
    TERM=xterm 
    MYSQL_USER=admin \
    MYSQL_PASS=**Random** \
    EXTRA_OPTS=" --defaults-file=/etc/mysql/my.cnf " \
    ON_CREATE_DB=**False** \
    STARTUP_SQL=**False**

#nginx
#EXPOSE 80 443
#mysql phpmyadmin can work without this
#EXPOSE 3306


#I need to do this because of a php5.6  bug
COPY php.ini /etc/php/php.ini


#php add www user and group
RUN \ 
  addgroup www && \
  adduser -SG www www


