# Ceph From Scratch

[Ceph](https://github.com/ceph/ceph)是目前最流行的统一存储系统，提供了对象存储、块设备存储以及文件系统服务。

![](./ceph_logo.png)

《Ceph From Scratch》将从零开始，介绍Ceph的用法以及CRUSH、RADOS等底层技术。并且借助官方的Docker容器，任何人都能轻易得实践本书的内容，学习分布式存储系统像家庭作业一样简单。

![](./docker_logo.jpg)

任何人都可以在本地运行此电子书：

```
docker run -d -p 4000:4000 tobegit3hub/ceph_from_scratch
```