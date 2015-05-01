#!/bin/sh
umask 000

exec /sbin/setuser jarvis python /opt/headphones/Headphones.py --datadir /data --nolaunch

# Did this because if Headphones restarts, it kills the container.
tail -f /data/logs/Headphones.log
