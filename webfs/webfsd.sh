#!/bin/sh
#
# /etc/rc.d/webfsd: start/stop webfs daemon
#

case $1 in
start)
	LISTEN_PORT=8000
	MIME_FILE=/etc/mime.types
	/usr/bin/webfsd -u webfs -g webfs \
			-~ /var/webfs \
			-S -C /var/webfs/ssl/server.pem \
			-m ${MIME_FILE} \
			-r /var/webfs/htdocs -p ${LISTEN_PORT} \
			-f index.html -x /var/webfs/cgi-bin \
			-L /var/webfs/logs/access.log
	;;
stop)
	killall -q /usr/bin/webfsd
	;;
restart)
	$0 stop
	sleep 2
	$0 start
	;;
*)
	echo "usage: $0 [start|stop|restart]"
	;;
esac

# End of file
