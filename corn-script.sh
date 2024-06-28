#!/bin/bash

echo "UPDATING 1PANEL SELFHOSTED APPSTORE - [ZDC]"
if [ ! -d "/zdc-apps" ]; then
	echo "NOT FOUNT REPOSITORY IN LOCAL, CLONING"
	git clone https://git.mczhengyi.top/zhengyi/1panel-apps.git /zdc-apps
	cd /zdc-apps
else
	cd /zdc-apps
	git pull
fi
echo "COPY APPS TO LOCAL DIR"
sudo cp -r apps/* /opt/1panel/resource/apps/local/
