# S3命令

## 创建用户

```
root@dev:/# radosgw-admin user create --uid=mona --display-name="Monika Singh" --email=mona@example.com
{
    "user_id": "mona",
    "display_name": "Monika Singh",
    "email": "mona@example.com",
    "suspended": 0,
    "max_buckets": 1000,
    "auid": 0,
    "subusers": [],
    "keys": [
        {
            "user": "mona",
            "access_key": "2196PJ0MA6FLHCVKVFDW",
            "secret_key": "eO1\/dmEOEU5LlooexlWwcqJYZrt3Gzp\/nBXsQCwz"
        }
    ],
    "swift_keys": [],
    "caps": [],
    "op_mask": "read, write, delete",
    "default_placement": "",
    "placement_tags": [],
    "bucket_quota": {
        "enabled": false,
        "max_size_kb": -1,
        "max_objects": -1
    },
    "user_quota": {
        "enabled": false,
        "max_size_kb": -1,
        "max_objects": -1
    },
    "temp_url_keys": []
}
```

## 添加Capabilities

```
radosgw-admin caps add --uid=mona  --caps="users=*"
radosgw-admin caps add --uid=mona  --caps="buckets=*"
radosgw-admin caps add --uid=mona  --caps="metadata=*"
radosgw-admin caps add --uid=mona --caps="zone=*"
```

## 安装s3cmd

```
apt-get install python-setuptools
git clone https://github.com/s3tools/s3cmd.git
cd s3cmd/
python setup.py install
```

## 使用s3cmd

必须提前设置.s3cfg文件。

```
s3cmd ls
```