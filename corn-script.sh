#!/bin/bash

echo "UPDATING 1PANEL SELFHOSTED APPSTORE - [Tabor]"
if [ ! -d "/tabor-apps" ]; then
	echo "NOT FOUNT REPOSITORY IN LOCAL, CLONING"
	git clone https://github.com/yaoleistable/1panel-apps.git /tabor-apps
	cd /tabor-apps
else
	cd /tabor-apps
	git pull
fi
echo "COPY APPS TO LOCAL DIR"
sudo cp -r apps/* /opt/1panel/resource/apps/local/
