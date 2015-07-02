# 使用Ceph

目前[Ceph官网](http://ceph.com/)提供了多种安装方式，但是最简单的方法当然是使用Docker。

首先通过命令`ifconfig`找到当前主机的IP，如下。

```
eth0      Link encap:Ethernet  HWaddr 08:00:27:F9:89:52
          inet addr:10.0.2.15  Bcast:10.0.2.255  Mask:255.255.255.0
          inet6 addr: fe80::a00:27ff:fef9:8952/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:288605 errors:0 dropped:0 overruns:0 frame:0
          TX packets:55395 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:307079524 (292.8 MiB)  TX bytes:3963682 (3.7 MiB)
```

记住本机IP为10.0.2.15，然后可以使用[ceph-docker](https://github.com/ceph/ceph-docker)提供的命令。

```
docker run -d --net=host -e MON_IP=10.0.2.15 -e CEPH_NETWORK=10.0.2.0/24 ceph/demo
```

这样就启动一个单机版Ceph服务了，通过`docker exec`进入容器，开始体验Ceph命令吧。
