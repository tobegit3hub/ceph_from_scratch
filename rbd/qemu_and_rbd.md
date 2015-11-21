# Qemu和RBD

## 使用Qemu

官方Qemu已经支持librbd，使用Qemu创建镜像前需要安装工具。

```
apt-get install -y qemu-utils
```

## 创建镜像

创建镜像非常简单，使用`qemu-img`命令，注意目前RBD只支持raw格式镜像。

```
qemu-img create -f raw rbd:rbd/test_image3 1G
```

## 修改镜像大小

修改镜像大小可以使用`resize`子命令。

```
qemu-img resize rbd:rbd/test_image3 2G
```

## 查看镜像信息

通过`info`可以获取Qemu镜像信息。

```
qemu-img info rbd:rbd/test_image3
```

