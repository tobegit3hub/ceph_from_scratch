# Ceph命令

运行`ceph/demo`容器后可以随心所欲执行Ceph命令了。

```
root@dev:/# ceph -w
    cluster 99ce2286-ac36-40c4-bdb7-c592893b6102
     health HEALTH_OK
     monmap e1: 1 mons at {dev=10.0.2.15:6789/0}
            election epoch 2, quorum 0 dev
     mdsmap e9: 1/1/1 up {0=0=up:active}
     osdmap e42: 1 osds: 1 up, 1 in
      pgmap v912: 120 pgs, 8 pools, 2810 bytes data, 63 objects
            3437 MB used, 14198 MB / 18603 MB avail
                 120 active+clean

2015-06-29 15:17:07.137895 mon.0 [INF] pgmap v912: 120 pgs: 120 active+clean; 2810 bytes data, 3437 MB used, 14198 MB / 18603 MB avail
```

