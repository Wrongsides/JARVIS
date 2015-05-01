#! /bin/sh
umask 000

exec /sbin/setuser jarvis python SickBeard.py --datadir=/data
