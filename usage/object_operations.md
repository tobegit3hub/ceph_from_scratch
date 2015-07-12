# Object操作

## 创建Pool

```
root@dev:/# ceph osd pool create web-services 128 128
pool 'web-services' created
root@dev:/# rados lspools
rbd
cephfs_data
cephfs_metadata
.rgw.root
.rgw.control
.rgw
.rgw.gc
.users.uid
web-services
```

## 添加Object 

```
root@dev:/# echo "Hello Ceph, You are Awesome like MJ" > /tmp/helloceph
root@dev:/# rados -p web-services put object1 /tmp/helloceph
root@dev:/# rados -p web-services ls
object1
root@dev:/# ceph osd map web-services object1
osdmap e29 pool 'web-services' (8) object 'object1' -> pg 8.bac5debc (8.3c) -> up ([0], p0) acting ([0], p0)
```

## 查看Object

```
root@dev:/# cd /var/lib/ceph/osd/
root@dev:/var/lib/ceph/osd# ls ceph-0/current/8.3c_head/
__head_0000003C__8  object1__head_BAC5DEBC__8
root@dev:/var/lib/ceph/osd# cat ceph-0/current/8.3c_head/object1__head_BAC5DEBC__8
Hello Ceph, You are Awesome like MJ
```
