# RADOS命令

## Pool简介

Pool是Ceph中的逻辑概念，不同的应用可以使用不同的Pool。

## Pool相关命令

```
root@dev:/# rados lspools
rbd
cephfs_data
cephfs_metadata
.rgw.root
.rgw.control
.rgw
.rgw.gc
.users.uid
```

如果想获得特定Pool的数据。

```
root@dev:/# rados -p .rgw ls
root@dev:/# rados -p .rgw.root ls
default.region
region_info.default
zone_info.default
```

## 容量相关

获得当前OSD所用容量。

```
root@dev:/# rados df
pool name                 KB      objects       clones     degraded      unfound           rd        rd KB           wr        wr KB
.rgw                       0            0            0            0           0            0            0            0            0
.rgw.control               0            8            0            0           0            0            0            0            0
.rgw.gc                    0           32            0            0           0          288          256          192            0
.rgw.root                  1            3            0            0           0            0            0            3            3
.users.uid                 0            0            0            0           0            0            0            0            0
cephfs_data                0            0            0            0           0            0            0            0            0
cephfs_metadata            2           20            0            0           0            0            0           31            8
rbd                        0            0            0            0           0            0            0            0            0
  total used         4630192           63
  total avail       13428976
  total space       19049892
```