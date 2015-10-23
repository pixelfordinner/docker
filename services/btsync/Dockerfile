FROM debian:latest
MAINTAINER Karl Fathi <karl@pixelfordinner.com>

RUN mkdir -p /opt/app

ADD http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable /usr/local/btsync.tar.gz

RUN cd /usr/local/ && \
    tar -xzvf btsync.tar.gz && \
    rm btsync.tar.gz && \
    chmod +x btsync

VOLUME ["/opt/app", "/mnt"]

ENTRYPOINT /usr/local/btsync $ENTRYPOINT_ARGS
