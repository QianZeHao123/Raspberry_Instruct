## 从0开始“调教”一下Raspberry Pi
#### 一、更换软件源
```
# Replace software source
# 编辑 `/etc/apt/sources.list` 文件，删除原文件所有内容，用以下内容取代：
deb http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi
deb-src http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi
# 编辑 `/etc/apt/sources.list.d/raspi.list` 文件，删除原文件所有内容，用以下内容取代：
deb http://mirrors.tuna.tsinghua.edu.cn/raspberrypi/ buster main ui
```
#### 二、NodeJS安装
```
# 官网下载nodejs
wget https://nodejs.org/dist/v16.13.0/node-v16.13.0-linux-armv7l.tar.xz
# 解压缩
tar -xvf node-v16.13.0-linux-armv7l.tar.xz
sudo mv node-v16.13.0-linux-armv7l /usr/local/node
# 软链接
sudo ln -s /usr/local/node/bin/node /usr/bin/node
sudo ln -s /usr/local/node/bin/npm /usr/bin/npm
# 下载cnpm
npm install -g cnpm --registry=https://registry.npm.taobao.org
# 软链接
sudo ln -s /usr/local/node/bin/cnpm /usr/bin/cnpm
```