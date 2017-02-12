#!/bin/sh

mkdir -p /config
mkdir -p /config/cache

touch /config/config.ini
touch /config/sickbeard.db
touch /config/sickbeard.db.v32
touch /config/sickbeard.db.v33
touch /config/sickbeard.db.v34
touch /config/sickbeard.db.v35
touch /config/sickbeard.db.v36
touch /config/sickbeard.db.v37
touch /config/sickbeard.db.v38
touch /config/sickbeard.db.v39
touch /config/sickbeard.db.v40
touch /config/sickbeard.db.v41
touch /config/sickbeard.db.v42
touch /config/sickbeard.db.v43
touch /config/sickbeard.db.v44

python /sickrage/SickBeard.py --datadir=/config/ --config=/config/config.ini
