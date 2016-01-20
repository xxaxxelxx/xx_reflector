#!/bin/bash
CFGDIR="/etc/lighttpd"

if [ -n "$TAGET_SERVER" ]; then
    sed -i "s/\<SERVER\>/$TAGET_SERVER/g" /etc/lighttpd/lighttpd.conf
fi
if [ -n "$TAGET_PORT" ]; then
    sed -i "s/\<PORT\>/$TAGET_PORT/g" /etc/lighttpd/lighttpd.conf
fi

lighttpd -D -f /etc/lighttpd/lighttpd.conf
#bash
exit
