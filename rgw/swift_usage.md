# Swift命令

## 创建用户

```
root@dev:~# radosgw-admin subuser create --uid=mona --subuser=mona:swift --access=full --secret=secretkey --key-type=swift
{
    "user_id": "mona",
    "display_name": "Monika Singh",
    "email": "mona@example.com",
    "suspended": 0,
    "max_buckets": 1000,
    "auid": 0,
    "subusers": [
        {
            "id": "mona:swift",
            "permissions": "<none>"
        }
    ],
    "keys": [
        {
            "user": "mona",
            "access_key": "2196PJ0MA6FLHCVKVFDW",
            "secret_key": "eO1\/dmEOEU5LlooexlWwcqJYZrt3Gzp\/nBXsQCwz"
        },
        {
            "user": "mona:swift",
            "access_key": "2FTDLNGGOWALF1ZS5XHY",
            "secret_key": ""
        }
    ],
    "swift_keys": [
        {
            "user": "mona:swift",
            "secret_key": "secretkey"
        }
    ],
    "caps": [
        {
            "type": "buckets",
            "perm": "*"
        },
        {
            "type": "metadata",
            "perm": "*"
        },
        {
            "type": "users",
            "perm": "*"
        },
        {
            "type": "zone",
            "perm": "*"
        }
    ],
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

## 安装Swift客户端

```
apt-get install python-pip
pip install python-swiftclient
```

## Swift命令

```
swift -V 1.0 -A http://localhost/auth -U mona:swift -K secretkey post example-bucket
```

```
swift -V 1.0 -A http://localhost/auth -U mona:swift -K secretkey list
```



