#!/bin/bash
CFGDIR="/etc/lighttpd"

if [ -n "$TAGET_SERVER" ]; then
    sed -i "s/\<SERVER\>/$TARGET_SERVER/g" $CFGDIR/lighttpd.conf
fi
if [ -n "$TAGET_PORT" ]; then
    sed -i "s/\<PORT\>/$TARGET_PORT/g" $CFGDIR/lighttpd.conf
fi

lighttpd -D -f /etc/lighttpd/lighttpd.conf
#bash
exit
