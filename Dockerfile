FROM alpine:latest
LABEL maintainer="Martijn Pepping <martijn.pepping@automiq.nl>"

ENV HUGO_VERSION=0.54

RUN apk add --update \
  bash \
  ca-certificates \
  wget && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo /usr/bin/hugo && \
  apk del ca-certificates wget

VOLUME  /src
WORKDIR /src

ENTRYPOINT ["hugo"]
