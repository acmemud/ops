FROM ubuntu:14.04

ENV MUDLIB_VERSION 1.0
ENV MUDLIB_HOME /usr/local/mudlib

RUN apt-get update \
  && apt-get -y install --no-install-recommends \
    git \
  && apt-get clean \
  && apt-get autoclean \
  && apt-get autoremove \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Fetch the mudlib from GitHub
RUN git config --global http.sslVerify false \
  && mkdir -p ${MUDLIB_HOME} \
  && git clone https://github.com/acmemud/acme-mudlib.git ${MUDLIB_HOME}

WORKDIR ${MUDLIB_HOME}

# Since we don't have an ssh key, and the repos are public, let's avoid ssh submodules
RUN sed -i 's/git@github.com:/git:\/\/github.com\//' .gitmodules \
  && git submodule update --init --recursive

# Expose the mudlib for use in another container
VOLUME ${MUDLIB_HOME}
