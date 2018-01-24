#!/usr/bin/env bash
# Execute this script as superuser

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp ${DIR}/gpio-control-relay.service /etc/systemd/system/
systemctl daemon-reload
systemctl start gpio-control-relay
systemctl status gpio-control-relay
echo "Installation done!"

#cp ${DIR}/service.sh /etc/init.d/gpio-control-relay.sh
#chmod ug+x /etc/init.d/gpio-control-relay.sh
#update-rc.d gpio-control-relay.sh defaults
#mkdir -p /usr/lib/gpio-control-relay/
#cp -r ${DIR} /usr/lib/