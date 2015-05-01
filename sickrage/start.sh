#! /bin/sh
umask 000

exec /sbin/setuser jarvis python /opt/sickrage/SickBeard.py --datadir=/data

# Did this because if Headphones restarts, it kills the container.
tail -f /data/logs/SickRage.log
