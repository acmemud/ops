FROM ubuntu:14.04

MAINTAINER AcmeMUD

ENV MUD_VERSION 3.5.0
ENV MUD_HOME /home/mud

RUN apt-get update \
    && apt-get -y install --no-install-recommends \
      bison \
      gcc \
      git \
      libc6 \
      libc6-dev \
      libgcrypt11 \
      libgcrypt11-dev \
      libjson-c-dev \
      make \
      mysql-server \
      telnet \
      wget \
      unzip \
    && apt-get clean \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -ms /bin/bash mud

USER mud

WORKDIR ${MUD_HOME}

# Fetch the driver from GitHub
RUN git config --global http.sslVerify false \
  && git clone https://github.com/acmemud/ldmud.git

WORKDIR ${MUD_HOME}/ldmud/src

#RUN sh ./autogen.sh \
#  && ./configure \
#  && make

EXPOSE 2010
