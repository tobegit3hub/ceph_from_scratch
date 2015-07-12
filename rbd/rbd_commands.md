# RBD命令

## 创建Image

```
root@dev:/# rbd ls
root@dev:/# rbd create ceph-client1-rbd1 --size 10240
root@dev:/# rbd ls
ceph-client1-rbd1
root@dev:/# rbd --image ceph-client1-rbd1 info
rbd image 'ceph-client1-rbd1':
        size 10240 MB in 2560 objects
        order 22 (4096 kB objects)
        block_name_prefix: rb.0.103b.74b0dc51
        format: 1
```