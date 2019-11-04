#!/bin/sh

/usr/sbin/nginx -t && /usr/sbin/nginx || exit 1

/usr/bin/aria2c --conf-path="/aria2/aria2.conf" \
    --rpc-secret="${ARIA2_PASSWD:-123456}" 

