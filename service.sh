#!/usr/bin/env bash

# Daemon for Systemd
# To install this daemon, execute the next scripts as superuser:
# 1- cp service.sh /etc/init.d/
# 2- chmod ug+x /etc/init.d/service.sh
# 3- update-rc.d service.sh defaults

DAEMON_PATH="/usr/lib/gpio-control-relay/daemon.py"

start(){
 echo -n $"Starting service: "
 python3 ${DAEMON_PATH} start
}

stop(){
 echo -n $"Stopping service: "
 python3 ${DAEMON_PATH} stop
}

restart(){
 stop
 python3 ${DAEMON_PATH} restart
 start
}

case "$1" in
start)
 start
 ;;
stop)
 stop
 ;;
restart)
 restart
 ;;
*)
 echo $"Usage: $0 {start|stop|restart}"
 exit 1
esac

exit 0