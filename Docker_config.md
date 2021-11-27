# 钱泽昊的**Docker**镜像安装指南
#### 一、如果你过去安装过docker，先删掉:
```
sudo apt-get remove docker docker-engine docker.io
```
#### 二、首先安装依赖:
```
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
```
#### 三、信任Docker的GPG公钥:
```
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
```
#### 四、如果是树莓派或其它ARM架构计算机运行:
```
echo "deb [arch=armhf] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/debian \
     $(lsb_release -cs) stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list
```
#### 五、最后安装docker-ce
```
sudo apt-get update
sudo apt-get install docker-ce
```
#### 六、检查docker是否安装成功
```
sudo docker run hello-world
```
```
# 依次执行以下命令
sudo systemctl daemon-reload
sudo systemctl enable docker # 开机启动docker
sudo systemctl start docker

# docker图形化管理界面安装
sudo docker pull portainer/portainer
sudo docker volume create portainer_data
sudo docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
# 访问 ip:9000
```