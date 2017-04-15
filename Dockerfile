FROM alpine:latest
MAINTAINER Yaming Huang <yumminhuang@gmail.com>

ARG HUGO_VERSION=0.20.1

RUN apk add --update wget ca-certificates && \
  cd /tmp/ && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo*/hugo* /usr/bin/hugo && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

VOLUME ["/website", "/public"]

WORKDIR /website
EXPOSE 1313

ENTRYPOINT ["/usr/bin/hugo"]
