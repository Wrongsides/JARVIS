#! /bin/sh
umask 000

exec /sbin/setuser jarvis python /sickrage/SickBeard.py --datadir=/data
