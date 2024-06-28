# Tabor的私有 1Panel 应用仓库

这里是Tabor的私有应用市场，用于存放个人所需的 App，这些 app 没有在官方应用市场上架。

你可以直接下载需要的APP，上传到`/opt/1panel/resource/apps/local/`，然后1Panel用商店右上角`更新应用列表`，再搜索应用名称即可看。

如果你想现在就使用这些应用，你可以使用下面的命令来执行脚本。注意使用root权限执行，执行前你可以先检查下脚本。

```shell
wget https://raw.githubusercontent.com/yaoleistable/1panel-apps/main/corn-script.sh | bash
```

如果你希望定时更新应用，你可以在计划任务中定义一个新的任务，来处理更新。脚本内容填写下面的文本。这些文本和上面链接里的内容一致。

```shell
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
```

## 应用列表

- FreshRSS ✔️

## 说明

本项目fork自https://git.mczhengyi.top/zhengyi/1panel-apps ，感谢原作者。

