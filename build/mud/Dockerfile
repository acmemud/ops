FROM ioft/i386-ubuntu:15.04

ENV MUD_VERSION 1.0
ENV MUDLIB /usr/local/acme/mudlib
ENV DRIVER /usr/local/acme

RUN dpkg --add-architecture i386 \
  && apt-get update \
  && apt-get -y install --no-install-recommends \
    libxml2 \
    libsqlite3-0 \
    sqlite3 \
    git \
    telnet \
    wget \
    unzip \
  && apt-get clean \
  && apt-get autoclean \
  && apt-get autoremove \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 2010
