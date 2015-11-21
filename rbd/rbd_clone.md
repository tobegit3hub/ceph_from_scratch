# RBD克隆

## 创建clone

RBD克隆就是通过快照克隆出新的可读可写的Image，创建前需要创建format为2的镜像快照。

```
rbd create test_image2 --size 1024 --image-format 2
rbd snap create --image test_image2 --snap test_snap2
rbd snap protect --image test_image2 --snap test_snap2
```

通过`clone`子命令就可以创建clone了。

```
rbd clone --image test_image2 --snap test_snap2 test_clone
```

## 列举clone

通过`children`子命令可以列举这个快照的所有克隆。

```
rbd children --image test_image2 --snap test_snap2
```

## 填充克隆

填充克隆也就是把快照数据flatten到clone中，如果你想删除快照你需要flatten所有的子Image。

```
rbd flatten --image test_clone
```
