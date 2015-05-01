#!/bin/sh
umask 000

exec /sbin/setuser jarvis python CouchPotatoServer/CouchPotato.py --data_dir /data --daemon

# Did this because if couchpotato restarts, it kills the container.
tail -f /data/logs/CouchPotato.log
