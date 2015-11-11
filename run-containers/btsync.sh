docker run -d -p 8888:8888 -p 55555:55555 -v /mnt/share/:/data/ -v /mnt/share/config/btsync:/config/ -v /mnt/share/:/share/ --name=btsync wrongsides/btsync
