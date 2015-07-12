# Ceph命令

## OSD状态

```
root@dev:/# ceph osd ls
0
```


```
root@dev:/# ceph osd stat
     osdmap e21: 1 osds: 1 up, 1 in
```

```
root@dev:/# ceph osd tree
ID WEIGHT  TYPE NAME     UP/DOWN REWEIGHT PRIMARY-AFFINITY
-1 1.00000 root default
-2 1.00000     host dev
 0 1.00000         osd.0      up  1.00000          1.00000
```

```
root@dev:/# ceph osd dump
epoch 21
fsid fee30c76-aec4-44d4-8138-763969aaa562
created 2015-07-12 05:59:12.189734
modified 2015-07-12 11:57:56.706958
flags
pool 0 'rbd' replicated size 1 min_size 1 crush_ruleset 0 object_hash rjenkins pg_num 64 pgp_num 64 last_change 2 flags hashpspool stripe_width 0
pool 1 'cephfs_data' replicated size 1 min_size 1 crush_ruleset 0 object_hash rjenkins pg_num 8 pgp_num 8 last_change 7 flags hashpspool crash_replay_interval 45 stripe_width 0
pool 2 'cephfs_metadata' replicated size 1 min_size 1 crush_ruleset 0 object_hash rjenkins pg_num 8 pgp_num 8 last_change 6 flags hashpspool stripe_width 0
pool 3 '.rgw.root' replicated size 1 min_size 1 crush_ruleset 0 object_hash rjenkins pg_num 8 pgp_num 8 last_change 8 owner 18446744073709551615 flags hashpspool stripe_width 0
pool 4 '.rgw.control' replicated size 1 min_size 1 crush_ruleset 0 object_hash rjenkins pg_num 8 pgp_num 8 last_change 10 owner 18446744073709551615 flags hashpspool stripe_width 0
pool 5 '.rgw' replicated size 1 min_size 1 crush_ruleset 0 object_hash rjenkins pg_num 8 pgp_num 8 last_change 12 owner 18446744073709551615 flags hashpspool stripe_width 0
pool 6 '.rgw.gc' replicated size 1 min_size 1 crush_ruleset 0 object_hash rjenkins pg_num 8 pgp_num 8 last_change 13 owner 18446744073709551615 flags hashpspool stripe_width 0
pool 7 '.users.uid' replicated size 1 min_size 1 crush_ruleset 0 object_hash rjenkins pg_num 8 pgp_num 8 last_change 14 owner 18446744073709551615 flags hashpspool stripe_width 0
max_osd 1
osd.0 up   in  weight 1 up_from 20 up_thru 20 down_at 19 last_clean_interval [5,19) 10.0.2.15:6800/199 10.0.2.15:6801/2000199 10.0.2.15:6802/2000199 10.0.2.15:6803/2000199 exists,up 5aaf2355-aa45-4452-a401-9add47541a88
```

## Monitor状态

```
root@dev:/# ceph mon stat
e1: 1 mons at {dev=10.0.2.15:6789/0}, election epoch 2, quorum 0 dev
```

```
root@dev:/# ceph mon dump
dumped monmap epoch 1
epoch 1
fsid fee30c76-aec4-44d4-8138-763969aaa562
last_changed 2015-07-12 05:59:11.900924
created 2015-07-12 05:59:11.900924
0: 10.0.2.15:6789/0 mon.dev
```

## PG操作

```
root@dev:/# ceph pg dump
pool 0  0       0       0       0       0       0       0       0
pool 1  0       0       0       0       0       0       0       0
pool 2  20      0       0       0       0       1962    30      30
pool 3  3       0       0       0       0       848     3       3
pool 4  8       0       0       0       0       0       50      50
pool 5  0       0       0       0       0       0       0       0
pool 6  32      0       0       0       0       0       192     192
pool 7  0       0       0       0       0       0       0       0
 sum    63      0       0       0       0       2810    275     275
osdstat kbused  kbavail kb      hb in   hb out
0       4630564 13428604        19049892        []      []
 sum    4630564 13428604        19049892
```

## CRUSH操作

```
root@dev:/# ceph osd crush dump
```

```
root@dev:/# ceph osd getcrushmap -o crushmap.txt
got crush map from osdmap epoch 21
```

```
root@dev:/# crushtool -d crushmap.txt -o crushmap-decompile.txt
root@dev:/# vim crushmap-decompile.txt
```


