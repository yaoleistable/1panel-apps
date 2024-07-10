#!/bin/sh

mkdir -p ./tmp

wget -O ./tmp/waf-community.tgz https://github.com/Safe3/uuWAF/releases/download/v2.5.2/waf-docker-community.v2.5.2.tgz 

tar -zxvf ./tmp/waf-community.tgz -C ./tmp

cp -r ./tmp/waf-community/docker .

cp -r ./tmp/waf-community/uuwaf .

rm -r ./tmp

echo 附件已经下载成功