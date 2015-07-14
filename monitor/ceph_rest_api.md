# Ceph REST API

## 简介

Ceph-rest-api是Ceph官方提供的RESTful API接口，启动其进程后我们可以通过HTTP接口来收集Ceph集群状态与数据，并且进行起停OSD等管理操作。

详细的API文档可参考 https://dmsimard.com/2014/01/01/documentation-for-ceph-rest-api/ 。

## 启动API

因为ceph-rest-api需要管理一个ceph集群，我们建议通过ceph/demo来启动。

```
docker run -d --net=host -e MON_IP=10.0.2.15 -e CEPH_NETWORK=10.0.2.0/24 ceph/demo
```

```
ceph-rest-api -n client.admin
```

这样在启动单机版ceph的同时，也启动了ceph-rest-api。

## 测试API

通过简单的curl命令即可获得集群的状态信息。

```
root@dev:/# curl 127.0.0.1:5000/api/v0.1/health
HEALTH_OK
```

或者查询更复杂的数据。

```
root@dev:/# curl 127.0.0.1:5000/api/v0.1/osd/tree
ID WEIGHT  TYPE NAME       UP/DOWN REWEIGHT PRIMARY-AFFINITY
-1 1.00000 root default
-2 1.00000     host dev
 0 1.00000         osd.0        up  1.00000          1.00000
-3       0     rack rack01
-4       0     rack rack02
-5       0     rack rack03
```