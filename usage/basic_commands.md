# Ceph命令

## 检查状态

最简单的ceph命令是，`ceph -w`，也就是watch整个ceph集群的状态。

```
root@dev:/# ceph -w
    cluster fee30c76-aec4-44d4-8138-763969aaa562
     health HEALTH_OK
     monmap e1: 1 mons at {dev=10.0.2.15:6789/0}
            election epoch 2, quorum 0 dev
     mdsmap e5: 1/1/1 up {0=0=up:active}
     osdmap e18: 1 osds: 1 up, 1 in
      pgmap v22: 120 pgs, 8 pools, 2810 bytes data, 63 objects
            4519 MB used, 13115 MB / 18603 MB avail
                 120 active+clean

2015-07-12 06:53:58.454077 mon.0 [INF] pgmap v22: 120 pgs: 120 active+clean; 2810 bytes data, 4519 MB used, 13115 MB / 18603 MB avail
```

或者通过`ceph status`命令。

```
root@dev:/# ceph status
    cluster fee30c76-aec4-44d4-8138-763969aaa562
     health HEALTH_OK
     monmap e1: 1 mons at {dev=10.0.2.15:6789/0}
            election epoch 2, quorum 0 dev
     mdsmap e5: 1/1/1 up {0=0=up:active}
     osdmap e21: 1 osds: 1 up, 1 in
      pgmap v30: 120 pgs, 8 pools, 2810 bytes data, 63 objects
            4521 MB used, 13114 MB / 18603 MB avail
                 120 active+clean
```





