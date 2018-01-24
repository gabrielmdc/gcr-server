#!/usr/bin/env bash
# Execute this script as superuser

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp ${DIR}/gpio-control-relay.service /etc/systemd/system/
systemctl daemon-reload
systemctl start gpio-control-relay
systemctl status gpio-control-relay
echo "Installation done!"