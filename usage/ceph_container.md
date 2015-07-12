# Ceph容器

## 使用Docker

试用Ceph最简单的方法是启动Ceph容器，使用前必须保证本地已经安装好Docker。Debian/Ubuntu用户可以通过`apt-get install docker.io`安装，CentOS/Redhat用户可以通过`yum install docker`安装，Mac和Windows建议下载boot2docker来使用。

基本的docker命令如下。

```
docker images
docker pull ubuntu
docker run -i -t ubuntu /bin/bash
docker exec -i -t ubuntu /bin/bash
docker ps
```

## Ceph容器

Ceph社区提供了官方的docker镜像，代码与教程都托管到Github上 https://github.com/ceph/ceph-docker。

由于Ceph的配置文件必须指定IP地址，因此使用Ceph容器前我们必须获得本机IP，如果是boot2docker用户需要获得其虚拟机IP。

```
docker@dev:~$ ifconfig | grep "eth0" -A 2
eth0      Link encap:Ethernet  HWaddr 08:00:27:F9:89:52
          inet addr:10.0.2.15  Bcast:10.0.2.255  Mask:255.255.255.0
          inet6 addr: fe80::a00:27ff:fef9:8952/64 Scope:Link
```

## 启动Ceph

启动单机版ceph非常简单，使用下述命令。

```
docker@dev:~$ docker run -d --net=host -e MON_IP=10.0.2.15 -e CEPH_NETWORK=10.0.2.0/24 ceph/demo
badaf5c8fed1e0edf6f2281539669d8f6522ba54b625076190fe4d6de79745ff
```

然后可以通过`docker ps`来检查容器状态。

```
docker@dev:~$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
badaf5c8fed1        ceph/demo           "/entrypoint.sh"    9 seconds ago       Up 9 seconds                            loving_pasteur
```

这里ceph容器的ID为“badaf5c8fed1”，可以快速进入容器。

```
docker@dev:~$ docker exec -i -t badaf5c8fed1 /bin/bash
root@dev:/#
```

