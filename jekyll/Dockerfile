FROM alpine:3.7
LABEL maintainer="marco.bore@gmail.com"

RUN apk add --update curl vim \
    build-base \
    python \
    libxslt-dev libffi-dev \
    ruby-dev ruby-io-console ruby-irb ruby-json ruby-rake \
    && gem install --no-document jekyll bundle

EXPOSE 4000
