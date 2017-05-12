FROM ioft/i386-ubuntu:15.04

ENV MUD_VERSION 3.5.0
ENV MUDLIB /usr/local/mudlib
ENV DRIVER /usr/local/mud

RUN dpkg --add-architecture i386 \
  && apt-get update \
  && apt-get -y install --no-install-recommends \
    git \
    telnet \
    wget \
    unzip \
  && apt-get clean \
  && apt-get autoclean \
  && apt-get autoremove \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 2010
