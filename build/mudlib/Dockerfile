FROM ubuntu:14.04

MAINTAINER Acme MUD

ENV MUD_VERSION 3.5.0
ENV MUD_HOME /home/mud

RUN apt-get update \
    && apt-get -y install --no-install-recommends \
      git \
    && apt-get clean \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git config --global http.sslVerify false

RUN mkdir -p /usr/local/mud

# Fetch the driver from GitHub
RUN git clone https://github.com/acmemud/acme-mudlib.git /usr/local/mud/lib

WORKDIR /usr/local/mud/lib

RUN sed -i 's/git@github.com:/git:\/\/github.com\//' .gitmodules
RUN git submodule update --init --recursive
