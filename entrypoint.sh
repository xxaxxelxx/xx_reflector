#!/bin/bash
CFGDIR="/etc/lighttpd"

if [ -n "$TARGET_SERVER" ]; then
    sed -i "s/<SERVER>/$TARGET_SERVER/g" $CFGDIR/lighttpd.conf
fi
if [ -n "$TARGET_PORT" ]; then
    sed -i "s/<PORT>/$TARGET_PORT/g" $CFGDIR/lighttpd.conf
fi

lighttpd -D -f /etc/lighttpd/lighttpd.conf
#bash
exit
