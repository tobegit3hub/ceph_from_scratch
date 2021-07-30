# RGW用法

## 使用RGW

RGW同时提供了S3和Swift兼容的接口，因此只要启动了RGW服务，就可以像使用S3或Swift那样访问RGW的object和bucket了。

本地启动RGW的命令也很简单，启动[ceph/demo](https://github.com/ceph/ceph-docker/tree/master/demo)镜像即可，命令如下。

```
docker run -d --net=host -e MON_IP=10.251.0.105 -e CEPH_NETWORK=10.251.0.0/24 ceph/demo
```

## 用户操作

查看用户信息。

```
radosgw-admin user info --uid=mona
```

## Bucket操作

查看bucket信息。

```
root@dev:~# radosgw-admin bucket stats
[]
```

