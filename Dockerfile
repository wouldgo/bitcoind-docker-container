FROM ubuntu
MAINTAINER Dario Andrei <wouldgo84@gmail.com>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential libtool autotools-dev autoconf pkg-config libssl-dev libevent-dev libboost-all-dev libminiupnpc-dev libzmq3-dev bsdmainutils git

RUN git clone https://github.com/bitcoin/bitcoin.git
WORKDIR bitcoin

RUN mkdir /blockchain && \
  ./autogen.sh && \
  ./configure \
    --enable-cxx \
    --disable-shared \
    --with-pic \
    --prefix=/bitcoin \
    --enable-upnp-default \
    --enable-hardening \
    --with-cli=no \
    --with-gui=no \
    --disable-wallet && \
  make -j 2 && \
  make install

ADD ./conf/bitcoin.conf /opt/bitcoin.conf
ADD ./run /boot
VOLUME ["/blockchain"]
EXPOSE 8332 8333 28332 28333 28334 28335

CMD ["/bin/bash", "/boot/run.sh" ]
