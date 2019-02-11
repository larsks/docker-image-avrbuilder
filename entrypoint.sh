#!/bin/sh

IPADDR=$(ip addr show eth0 | sed -n 's/.*inet \([^ /]*\).*/\1/p')

if [ "$1" == "docs" ]; then
	printf "http://%s/\\n" $IPADDR
	exec darkhttpd /usr/share/avr-docs > /dev/null
fi

exec "$@"
