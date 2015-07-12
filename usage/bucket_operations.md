# Bucket命令

## 创建Bucket

```
root@dev:/# ceph osd tree
ID WEIGHT  TYPE NAME     UP/DOWN REWEIGHT PRIMARY-AFFINITY
-1 1.00000 root default
-2 1.00000     host dev
 0 1.00000         osd.0      up  1.00000          1.00000
root@dev:/# ceph osd crush add-bucket rack01 rack
added bucket rack01 type rack to crush map
root@dev:/# ceph osd crush add-bucket rack02 rack
added bucket rack02 type rack to crush map
root@dev:/# ceph osd crush add-bucket rack03 rack
added bucket rack03 type rack to crush map
root@dev:/# ceph osd tree
ID WEIGHT  TYPE NAME     UP/DOWN REWEIGHT PRIMARY-AFFINITY
-5       0 rack rack03
-4       0 rack rack02
-3       0 rack rack01
-1 1.00000 root default
-2 1.00000     host dev
 0 1.00000         osd.0      up  1.00000          1.00000
```

## 移动Rack

```
root@dev:/# ceph osd crush move rack01 root=default
moved item id -3 name 'rack01' to location {root=default} in crush map
root@dev:/# ceph osd crush move rack02 root=default
moved item id -4 name 'rack02' to location {root=default} in crush map
root@dev:/# ceph osd crush move rack03 root=default
moved item id -5 name 'rack03' to location {root=default} in crush map
root@dev:/# ceph osd tree
ID WEIGHT  TYPE NAME       UP/DOWN REWEIGHT PRIMARY-AFFINITY
-1 1.00000 root default
-2 1.00000     host dev
 0 1.00000         osd.0        up  1.00000          1.00000
-3       0     rack rack01
-4       0     rack rack02
-5       0     rack rack03
```

