FROM ioft/i386-ubuntu:15.04

ENV MUD_VERSION 3.3
ENV MUD_HOME /home/mud

RUN dpkg --add-architecture i386 \
  && apt-get update \
  && apt-get -y install --no-install-recommends \
    autoconf \
    bison \
    gcc \
    git \
    libc6 \
    libc6-dev \
    libgcrypt20 \
    libgcrypt20-dev \
    libjson-c-dev \
    libpcre++-dev \
    libxml2-dev \
    libsqlite3-dev \
    make \
    telnet \
    wget \
    unzip \
  && apt-get clean \
  && apt-get autoclean \
  && apt-get autoremove \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -ms /bin/bash mud

WORKDIR ${MUD_HOME}

# Fetch the driver from GitHub
RUN git config --global http.sslVerify false \
  && git clone --branch master-3.3 https://github.com/acmemud/ldmud.git

WORKDIR ${MUD_HOME}/ldmud/src

#RUN autoconf autoconf/configure.ac > configure \
#  && chmod +x configure \
#  && cp ../autoconf/machine.h.in . \
#  && ./configure  \
#  && make install-all

RUN ./configure --prefix /usr/local/acme \
                --enable-use-alists \
                --disable-use-deprecated \
                --enable-use-xml \
                --enable-use-sqlite \
                --with-portno=2010 \
  && make install-all

VOLUME /usr/local/acme
