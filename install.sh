#!/usr/bin/env bash
# Execute this script as superuser

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp ${DIR}/gcr-server.service /etc/systemd/system/
systemctl daemon-reload
systemctl start gcr-server
systemctl status gcr-server
echo "Installation done!"