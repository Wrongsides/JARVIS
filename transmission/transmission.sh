#!/bin/bash
umask 000

exec /sbin/setuser jarvis /usr/bin/transmission-daemon -f --config-dir /config --log-info
