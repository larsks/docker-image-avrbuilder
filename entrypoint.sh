#!/bin/sh

IPADDR=$(ip addr show eth0 | sed -n 's/.*inet \([^ /]*\).*/\1/p')

if [ "$1" == "docs" ]; then
	cat <<-EOF
	======================================================================

	To view AVR-related documentation, point your browser at the
	following link:

	    http://${IPADDR}/

	======================================================================
	EOF
	exec darkhttpd /usr/share/avr-docs > /dev/null
fi

exec "$@"
