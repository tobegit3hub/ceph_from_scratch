# RBD快照

## 创建快照

通过`snap`子命令可以创建和查看快照。

```
rbd snap create --image test_image --snap test_snap
rbd snap ls --image test_image
```

## 快照回滚

使用`snap rollback`就可以回滚快照，由于快照命名是镜像名后面加@，我们还可以下面的简便写法。

```
rbd snap rollback --image test_image --snap test_snap
rbd snap rollback rbd/test_image@test_snap
```

## 删除快照

删除快照也很简单，使用`rm`子命令，如果想清理所有快照可以使用`purge`子命令，注意Ceph删除是异步的不会立即释放空间。

```
rbd snap rm --image test_image --snap test_snap
rbd snap purge --image test_image
```

## 保护快照

保护快照可以防止用户误删数据，这是clone前必须做的。

```
rbd snap protect --image test_image --snap test_snap
```

要想不保护快照也很容易，使用`unprotect`子命令即可。

```
rbd snap unprotect --image test_image --snap test_snap
```

