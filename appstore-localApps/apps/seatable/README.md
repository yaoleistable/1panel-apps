# 使用说明

**创建时需要手动连接容器终端执行命令启动服务，并创建管理员账户密码。**

容器管理功能页面，连接容器终端，执行以下命令

- 启动 SeaTable 服务

```
/shared/seatable/scripts/seatable.sh start
```

- # 创建一个管理员帐户
```
/shared/seatable/scripts/seatable.sh superuser  
```

# 原始相关
***
## Introduction

SeaTable is a spreadsheet/database like Airtable. The initial idea is for people to manage different kinds of data in a single platform. With built-in automation rules, scripts and APIs, you can automate data processing with no code or little code.

The core features include:

* A spreadsheet like interface supporting collaboratively editing
* Mobile ready UI to be used on browsers in mobile system
* Unlimited rows in a single base
* Interconnect data between bases
* Automate data processing without coding
* Powerful APIs as well as SQL interface
* self-hosted, no restriction on API calls

## History

SeaTable is originally built by the Seafile team (https://github.com/haiwen/seafile). The idea was to add online collaboration table feature to Seafile. Later it involved into a separate project. The business is now moved to SeaTable GmbH.

## How to install SeaTable

Please check our manual: https://manual.seatable.io

## Repositories

General

* [Scripts examples](https://github.com/seatable/seatable-scripts-examples): Example background scripts that you can add to extend SeaTable.
* [Plugin template](https://github.com/seatable/seatable-plugin-template): The template for writing your own UI plugin.

Plugins

* [Timeline plugin](https://github.com/seatable/seatable-plugin-timeline): Show records in timeline.
* [Map](https://github.com/seatable/seatable-plugin-map): Show records in Google Map. 
* [Deduplicate](https://github.com/seatable/seatable-plugin-deduplicate): Detect duplicated records.


## Software components

SeaTable consists of following components

* dtable-web: The web site for manage tables.
* dtable-server: Store the tables and provide collaborating feature.
* [dtable-events](https://github.com/seatable/dtable-events): Background maintenance tasks
* [seaf-server](https://github.com/haiwen/seafile): Store attachments (files and images)
* [ccnet-server](https://github.com/haiwen/ccnet-server): Will be removed later.
* [thumbnail-server](https://github.com/seatable/seatable-thumbnail-server): serve image thumbnail and other static contents

## LICENSE

The different components of SeaTable community edition are released under different licenses:

* dtable-web: Apache License v2
* dtable-events: Apache License v2
* dtable-server: Proprietary License
* seaf-server: AGPLv3
* thumbnail-server: Apache License v2

Note:

* The source code will be uploaded to GitHub later. They are currently included in the Docker image if you are interested.

## Reporting issues

Please report issues in the forum: https://forum.seatable.io/

