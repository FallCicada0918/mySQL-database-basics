<!--
 * @Description: 
 * @Author: FallCicada
 * @Date: 2024-10-31 10:35:25
 * @LastEditors: FallCicada
 * @LastEditTime: 2024-10-31 10:35:52
 * @: 無限進步
-->
# MySQL面试题

## 一、简答题

## 1.关系型和非关系型数据库的区别？



## 2.详细说一下一条 MySQL 语句执行的步骤



## 3.MySQL 使用索引的原因？



## 4.索引的三种常见底层数据结构以及优缺点



## 5.索引的常见类型以及它是如何发挥作用的？



## 6.MyISAM 和 InnoDB 实现 B 树索引方式的区别是什么？



## 7.InnoDB 为什么设计 B+ 树索引？



## 8.什么是覆盖索引和索引下推？



## 9.哪些操作会导致索引失效？



## 10.字符串加索引



## 11.MySQL 的 change buffer 是什么？



## 12.MySQL 是如何判断一行扫描数的？



## 13.MySQL 的 redo log 和 binlog 区别？



## 14.为什么需要 redo log？



## 15.为什么 redo log 具有 crash-safe 的能力，是 binlog 无法替代的？



## 16.当数据库 crash 后，如何恢复未刷盘的数据到内存中？



## 17.redo log 的执行流程?



## 18.binlog 的概念是什么，起到什么作用， 可以保证 crash-safe 吗?



## 19.什么是两阶段提交？



## 20.MySQL 怎么知道 binlog 是完整的?



## 21.什么是 WAL 技术，有什么优点？



## 22.binlog 日志的三种格式



## 23.redo log日志格式



## 24.原本可以执行得很快的 SQL 语句，执行速度却比预期的慢很多，原因是什么？如何解决？



## 25.InnoDB 数据页结构



## 26.MySQL 是如何保证数据不丢失的？



## 27.误删数据怎么办？



## 28.drop、truncate 和 delete 的区别



## 29.在 MySQL 中有两个 kill 命令



## 30.如何理解 MySQL 的边读边发



## 31.MySQL 的大表查询为什么不会爆内存？



## 32.MySQL 临时表的用法和特性



## 33.MySQL 存储引擎介绍（InnoDB、MyISAM、MEMORY）



## 34.都说 InnoDB 好，那还要不要使用 MEMORY 引擎？



## 35.如果数据库误操作, 如何执行数据恢复?



## 36.MySQL 是如何保证主备同步？



## 37.什么是主备延迟



## 38.为什么要有多线程复制策略？



## 39.MySQL 的并行策略有哪些？



## 40.MySQL的一主一备和一主多从有什么区别？



## 41.主库出问题如何解决?



## 42.MySQL 读写分离涉及到过期读问题的几种解决方案?



## 43.MySQL的并发链接和并发查询有什么区别？



## 44.短时间提高 MySQL 性能的方法



## 45.为什么 MySQL 自增主键 ID 不连续？



## 46.InnoDB 为什么要用自增 ID 作为主键？



## 47.如何最快的复制一张表？



## 48.grant 和 flush privileges语句



## 49.要不要使用分区表？



## 50.join 用法



## 51.MySQL 有哪些自增ID？各自场景是什么？



## 52.Xid 在 MySQL 内部是怎么生成的呢？



## 53.说一下 MySQL 的锁



## 54.什么是幻读？



## 55.为什么 MySQL 会抖一下？



## 56.为什么删除了表，表文件的大小还是没变？



## 57.count(*)实现方式以及各种 count 对比



## 58.orderby 排序内部原理



## 59.LIKE 声明中的％和_是什么意思？



### 60.MySQL 如何优化 DISTINCT？



### 61.可以使用多少列创建索引？



### 62.MySQL 有关权限的表都有哪几个？



### 63.MySQL 数据库作发布系统的存储，一天五万条以上的增量，预计运维三年,怎么优化？



### 64.什么情况下设置了索引但无法使用



### 65.优化数据库的方法



### 66.简单描述 MySQL 中，索引，主键，唯一索引，联合索引的区别，对数据库的性能有什么影响（从读写两方面）



### 67.事务特性



### 68.对于关系型数据库而言，索引是相当重要的概念，请回答有关索引的几个问题



### 69.解释 MySQL 外连接、内连接与自连接的区别



### 70.完整性约束包括哪些？



### 71.如何通俗地理解三个范式？



### 72.说说对 SQL 语句优化有哪些方法？



## 二、手写SQL

1.**建表语句：**

```sql
drop table if exists user_profile;
CREATE TABLE `user_profile` (
`id` int NOT NULL,
`device_id` int NOT NULL,
`gender` varchar(14) NOT NULL,
`age` int ,
`university` varchar(32) NOT NULL,
`gpa` float);
INSERT INTO user_profile VALUES(1,2138,'male',21,'北京大学',3.4);
INSERT INTO user_profile VALUES(2,3214,'male',23,'复旦大学',4.0);
INSERT INTO user_profile VALUES(3,6543,'female',20,'北京大学',3.2);
INSERT INTO user_profile VALUES(4,2315,'female',23,'浙江大学',3.6);
INSERT INTO user_profile VALUES(5,5432,'male',25,'山东大学',3.8);
INSERT INTO user_profile VALUES(6,2131,'male',28,'北京师范大学',3.3);
```

现在想要取出用户信息表中的年龄和gpa数据，并先按照gpa升序排序，再按照年龄升序排序输出，请取出相应数据。



现在想要取出用户信息表中对应的数据，并先按照gpa、年龄降序排序输出



现在想要找到男性且GPA在3.5以上(不包括3.5)的用户进行调研，请你取出相关数据。



现在想要找到学校为北大或GPA在3.7以上(不包括3.7)的用户进行调研，请你取出相关数据



现在想要找到学校为北大、复旦和山大的同学进行调研，请你取出相关数据



现在想要找到gpa在3.5以上(不包括3.5)的山东大学用户 或 gpa在3.8以上(不包括3.8)的复旦大学同学进行用户调研，请你取出相应数据



**重新建表：**

```sql
drop table if exists user_profile;
CREATE TABLE `user_profile` (
`id` int NOT NULL,
`device_id` int NOT NULL,
`gender` varchar(14) NOT NULL,
`age` int ,
`university` varchar(32) NOT NULL,
`gpa` float,
`active_days_within_30` float,
`question_cnt` float,
`answer_cnt` float
);
INSERT INTO user_profile VALUES(1,2138,'male',21,'北京大学',3.4,7,2,12);
INSERT INTO user_profile VALUES(2,3214,'male',null,'复旦大学',4.0,15,5,25);
INSERT INTO user_profile VALUES(3,6543,'female',20,'北京大学',3.2,12,3,30);
INSERT INTO user_profile VALUES(4,2315,'female',23,'浙江大学',3.6,5,1,2);
INSERT INTO user_profile VALUES(5,5432,'male',25,'山东大学',3.8,20,15,70);
INSERT INTO user_profile VALUES(6,2131,'male',28,'山东大学',3.3,15,7,13);
INSERT INTO user_profile VALUES(7,4321,'male',28,'复旦大学',3.6,9,6,52);
```

现在想要对每个学校不同性别的用户活跃情况和发帖数量进行分析，请分别计算出每个学校每种性别的用户数、30天内平均活跃天数和平均发帖数量。



**添加表：**

```sql
drop table if  exists `question_practice_detail`;
CREATE TABLE `question_practice_detail` (
`id` int NOT NULL,
`device_id` int NOT NULL,
`question_id`int NOT NULL,
`result` varchar(32) NOT NULL
);
INSERT INTO question_practice_detail VALUES(1,2138,111,'wrong');
INSERT INTO question_practice_detail VALUES(2,3214,112,'wrong');
INSERT INTO question_practice_detail VALUES(3,3214,113,'wrong');
INSERT INTO question_practice_detail VALUES(4,6543,111,'right');
INSERT INTO question_practice_detail VALUES(5,2315,115,'right');
INSERT INTO question_practice_detail VALUES(6,2315,116,'right');
INSERT INTO question_practice_detail VALUES(7,2315,117,'wrong');
INSERT INTO question_practice_detail VALUES(8,5432,118,'wrong');
INSERT INTO question_practice_detail VALUES(9,5432,112,'wrong');
INSERT INTO question_practice_detail VALUES(10,2131,114,'right');
INSERT INTO question_practice_detail VALUES(11,5432,113,'wrong');
```

现在想要查看所有来自浙江大学的用户题目回答明细情况，请你取出相应数据



现在想要了解每个学校答过题的用户平均答题数量情况，请你取出数据。



