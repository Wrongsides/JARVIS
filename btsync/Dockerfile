FROM wrongsides/baseimage

# Download and extract the executable to /usr/bin

RUN mkdir /usr/bin/btsync

ADD https://download-cdn.getsync.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz /usr/bin/btsync

RUN cd /usr/bin/btsync && tar -xzvf BitTorrent-Sync_x64.tar.gz && rm BitTorrent-Sync_x64.tar.gz

# Web GUI
EXPOSE 8888
# Listening port
EXPOSE 55555

ENTRYPOINT ["/usr/bin/btsync"]
CMD ["BitTorrent-Sync_x64","--config", "/btsync/btsync.conf", "--nodaemon"]
