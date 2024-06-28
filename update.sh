#!/bin/bash

echo "UPDATING SELF HOSTING 1PANEL APPLICATIONS"
git pull
sudo cp -r apps/* /opt/1panel/resource/apps/local/
