#!/bin/sh
#
# /etc/rc.d/qmail: start/stop qmail daemon
#

case $1 in
start)
        /var/qmail/rc
        /usr/bin/tcpserver -v -u `id qmaild -u` -g `id qmaild -g` 0 smtp /var/qmail/bin/qmail-smtpd
        ;;
stop)
        PID=`pidof /var/qmail/bin/qmail-smtpd`
        if [ "$PID" != "" ]
        then
                kill -TERM $PID
        fi
        ;;
restart)
        $0 stop
        $0 start
        ;;
*)
        echo "usage: $0 [start|stop|restart]"
        ;;
esac

# End of file
