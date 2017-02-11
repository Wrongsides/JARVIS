git clone git@github.com:timhaak/docker-sickrage.git
cd docker-sickrage
docker build -t sickrage .

docker run --restart=always -d -h your_host_name -v /your_config_location:/config -v /your_videos_location:/data -p 8081:8081 sickrage
