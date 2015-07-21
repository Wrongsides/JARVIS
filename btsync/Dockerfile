FROM wrongsides/baseimage

# Download and extract the executable to /usr/bin
ADD https://download-cdn.getsync.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz /usr/bin
RUN cd /usr/bin && tar -xzvf BitTorrent-Sync_x64.tar.gz && rm BitTorrent-Sync_x64.tar.gz

# Web GUI
EXPOSE 8888
# Listening port
EXPOSE 55555

ENTRYPOINT ["BitTorrent-Sync_x64"]

USER jarvis

CMD ["--config", "/btsync/btsync.conf", "--nodaemon"]
