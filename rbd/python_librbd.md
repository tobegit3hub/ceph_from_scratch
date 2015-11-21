# Python librbd

## 安装librbd

Ceph官方提供Python库来访问RBD，通过以下命令可以安装。

```
apt-get install -y python-ceph
```

## 创建Image

使用librbd创建Image也很简单，下面是示例代码。

```
import rados
import rbd

cluster = rados.Rados(conffile='/etc/ceph/ceph.conf')
cluster.connect()
ioctx = cluster.open_ioctx('rbd')

rbd_inst = rbd.RBD()
size = 1024**3
image_name = "test_image"
rbd_inst.create(ioctx, image_name, size)

image = rbd.Image(ioctx, image_name)
data = 'foo' * 200
image.write(data, 0)

image.close()
ioctx.close()
cluster.shutdown()
```

也可以把下面代码保存成文件直接执行。

```
cluster = rados.Rados(conffile='/etc/ceph/ceph.conf')
try:
    ioctx = cluster.open_ioctx('rbd')
    try:
        rbd_inst = rbd.RBD()
        size = 1024**3
	image_name = "test_image"
        rbd_inst.create(ioctx, image_name, size)
        image = rbd.Image(ioctx, image_name)
        try:
            data = 'foo' * 200
            image.write(data, 0)
        finally:
            image.close()
    finally:
        ioctx.close()
finally:
    cluster.shutdown()
```

或者这样。

```
with rados.Rados(conffile='/etc/ceph/ceph.conf') as cluster:
    with cluster.open_ioctx('rbd') as ioctx:
        rbd_inst = rbd.RBD()
        size = 1024**3
	image_name = "test_image"
        rbd_inst.create(ioctx, image_name, size)
        with rbd.Image(ioctx, image_name) as image:
            data = 'foo' * 200
            image.write(data, 0)
```