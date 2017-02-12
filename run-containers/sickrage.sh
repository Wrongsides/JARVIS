docker run --restart=always -d -h JARVIS -v /mnt/share/config/sickrage:/config -v /mnt/share:/data -p 8081:8081 --name=sickrage wrongsides/sickrage
