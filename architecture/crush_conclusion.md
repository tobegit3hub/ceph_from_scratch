# CRUSH总结

## 算法总结

CRUSH与一致性哈希最大的区别在于接受的参数多了cluster map和placement rules，这样就可以根据目前cluster的状态动态调整数据位置，同时通过算法得到一致的结果。

## 算法补充

前面介绍了bucket根据不同场景有四种类型，分别是Uniform、List、Tree和Straw，他们对应运行数据和数据迁移量有不同的tradeoff，目前大家都在用Straw因此不太需要关系其他。

目前erasing code可以大大减小三备份的数据量，但除了会导致数据恢复慢，部分ceph支持的功能也是不能直接用的，而且功能仍在开发中不建议使用。