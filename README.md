# Tabor的私有 1Panel 应用仓库

在这里更新一些自己喜欢的但是官方有没有上架的应用。

这里是正义的私有应用市场，用于存放个人所需的 App，这些 app 没有在官方应用市场上架。

这里的应用未上架的原因基本都是他不够完美，没有完成比如文档、自定义配置等，当我完成这些配置之后，我会讲这些应用提交到官方的仓库内，但我无法保证什么时候完成提交。

如果你想现在就使用这些应用，你可以使用下面的命令来执行脚本。注意使用root权限执行，执行前你可以先检查下脚本。

```shell
wget https://git.mczhengyi.top/zhengyi/1panel-apps/raw/branch/main/corn-script.sh | bash
```

如果你希望定时更新应用，你可以在计划任务中定义一个新的任务，来处理更新。脚本内容填写下面的文本。这些文本和上面链接里的内容一致。

```shell
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
```

## 应用列表

- FreshRSS ✔️
- MT Photos
- RssHub
- 思源笔记

## 说明

本项目fork自https://git.mczhengyi.top/zhengyi/1panel-apps ，感谢原作者。

