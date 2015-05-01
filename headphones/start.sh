#!/bin/sh

python headphones/Headphones.py --data_dir /data --daemon

# Did this because if Headphones restarts, it kills the container.
tail -f /data/logs/Headphones.log
