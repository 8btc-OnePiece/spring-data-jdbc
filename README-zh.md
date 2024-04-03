# 3.0.12.OnePiece.1
## 支持@Query+Pageable的组合
StringBasedJdbcQuery官方不支持slice/page查询，即@Query中自定义sql且方法中有Pageable入参的情况。 
我猜测可能是因为page的整个体系、sql的构造都是基于PartTree的，没有什么优雅的方式去支持@Query里自定义sql的分页？
但PartTreeJdbcQuery又实实在在有这个能力。因此我将两者组合了一下。

这个变更经历`1.1.6.OnePiece.1`、`2.2.11.OnePiece.1`、`3.0.12.OnePiece.1`三个版本，思路都没变，基本只是适配版本号左侧的版本代码。
我新建了`3.0.12.OnePiece.x.pr`分支，计划提个PR看看会有什么反馈。
而各个Onepiece.x版本的分支（如`2.2.11.onepiece.x`、`3.0.12.OnePiece.x`），则用于业务里版本发布使用。