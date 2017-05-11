FROM ubuntu:14.04

MAINTAINER Acme MUD

ENV MUDLIB_VERSION 1.0

RUN apt-get update \
    && apt-get -y install --no-install-recommends \
      git \
    && apt-get clean \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git config --global http.sslVerify false

RUN mkdir -p /usr/local/mud

# Fetch the mudlib from GitHub
RUN git clone https://github.com/acmemud/acme-mudlib.git /usr/local/mud/lib

WORKDIR /usr/local/mud/lib

# Since we don't have an ssh key, and the repos are public, let's avoid ssh submodules
RUN sed -i 's/git@github.com:/git:\/\/github.com\//' .gitmodules
RUN git submodule update --init --recursive
