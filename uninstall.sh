#!/usr/bin/env bash
# Execute this script as superuser

systemctl stop gcr-server.service
systemctl disable gcr-server.service
rm /lib/systemd/system/gcr-server.service
systemctl daemon-reload
rm -r /usr/lib/gcr-server
echo "Service uninstalled!"