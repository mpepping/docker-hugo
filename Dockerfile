FROM alpine:latest
MAINTAINER Martijn Pepping <martijn@xbsd.nl>

ENV HUGO_VERSION=0.15

RUN apk add --update \
  bash \
  ca-certificates \
  py-pip \
  python \
  python-dev \
  wget && \
  pip install pygments && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_linux_amd64.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_linux_amd64.tar.gz && \
  mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/bin/hugo && \
  rm -r hugo_${HUGO_VERSION}_linux_amd64 && \
  apk del ca-certificates wget

VOLUME /src
WORKDIR /src

ENTRYPOINT ["hugo"]
