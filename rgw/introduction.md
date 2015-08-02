# RGW介绍

RGW全称Rados Gateway，是ceph封装RADOS接口而提供的gateway服务，并且实现S3和Swift兼容的接口，也就是说用户可以使用S3或Swift的命令行工具或SDK来使用RGW。

RGW对象存储也可以作为[docker registry](https://github.com/docker/registry)的后端，相对与本地存储，将docker镜像存储到RGW后端可以保证即使机器宕机或者操作系统crush也不会丢失数据。