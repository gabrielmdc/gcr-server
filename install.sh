#!/usr/bin/env bash
# Execute this script as superuser

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -d "/usr/lib/gcr-server" ]; then
    cp -r ${DIR}/. /usr/lib/gcr-server
else
    cp -r ${DIR} /usr/lib/gcr-server
fi

chmod 744 /usr/lib/gcr-server/daemon.py
cp /usr/lib/gcr-server/gcr-server.service /lib/systemd/system/
systemctl daemon-reload
systemctl enable gcr-server.service
systemctl start gcr-server.service
systemctl status gcr-server.service
echo "Installation done!"