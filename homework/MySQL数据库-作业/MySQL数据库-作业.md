<!--
* @Description: 
 * @Author: FallCicada
 * @Date: 2024-10-23 19:05:36
 * @LastEditors: FallCicada
 * @LastEditTime: 2024-10-24 20:04:08
 * @: 無限進步
-->
# MySQL数据库-作业

# 数据库概述
## 1. 什么是数据库？请简要描述数据库的定义和作用。
### 答：
1、数据库是“按照数据结构来组织，存储和管理数据的仓库”。

2、是一个长期存储在计算机内的、有组织的、可共享的、统一管理的、大量数据的集合文件。数据库的具体体现，就是磁盘的文件或内存的一段数据。

①数据库中数据存储是有组织的结构，方便数据读取和修改等


②一种长期存储手段，不主动删除数据不应该消失

③数据库中数据存储是有组织的结构，方便数据读取何修

④数据库数据属于可共享的符合真正开发需求


**作用**

数据库的作用主要体现在以下几个方面：

1. **数据存储和管理**：数据库提供了一种高效的方式来存储和管理大量数据，确保数据的安全性和完整性。
2. **数据共享**：数据库允许多个用户和应用程序共享数据，避免数据冗余和不一致。
3. **数据查询和分析**：通过数据库查询语言（如SQL），用户可以方便地从数据库中检索和分析数据，支持决策和业务分析。
4. **数据维护**：数据库系统提供了数据备份、恢复和安全管理等功能，确保数据的持久性和可靠性。
5. **事务处理**：数据库支持事务处理，确保数据操作的原子性、一致性、隔离性和持久性（ACID特性）。

**特点总结**

关系型数据库适用于需要强一致性和复杂查询的场景

非关系型数据库适用于需要高性能、灵活和分布式处理的场景

## 2.	什么是关系型数据库？关系型数据库中的"关系"体现在哪些方面？
### 答：
#### 关系型数据库

* 数据按照类别进行存储，每个剋别存储到一个容器（表）中，表和表之间可以建立关系，可以仅从关联操作，性能相对一般。
* 结构化数据模型：数据以表格形式存储，具有固定的结构。例如：学生和分数分别存储到不同的表。（前置操作）
* ACID事务：通过强大的事务支持，保证数据的原子性、一致性、隔离性和持久性。例如：转账失败，钱不损失。（数据回滚）
* 丰富查询语句：支持SQL语言，能够进行复杂的关联数据查询。例如：查询学生以及学生分数。
* 数据一致性：数据的关系和约束确保数据的一致性和完整型。例如：存储学生数据，保证身份证号唯一且不为空

## 3. 说说你对DB、DBMS、SQL的理解
### 答：
#### 数据库（DB）
数据库是存储数据的仓库，是一个长期存储在计算机内的、有组织的、可共享的、统一管理的、大量数据的集合文件。数据库的具体体现就是磁盘的文件或内存的一段数据。

#### 数据库管理系统（DBMS）
数据库管理系统是用于管理数据库的软件系统。它提供了数据定义、数据操作、数据控制等功能，确保数据的安全性、完整性和一致性。常见的数据库管理系统有MySQL、Oracle、SQL Server等。

#### 结构化查询语言（SQL）
SQL是一种用于管理和操作关系型数据库的标准语言。它包括数据查询、数据插入、数据更新、数据删除等操作。SQL语言具有强大的查询功能，能够方便地从数据库中检索和操作数据。

## 4.	常见的数据库对象有哪些，列出3个并简述一下其在数据库中的作用
### 答：
| 单位名称 | 描述                              | 对比     |
| -------- | --------------------------------- | -------- |
| 库       | 数据库中最大的存储单位,内部储存表 |          |
| 表       | 一类数据和实体的集合              | Java类   |
| 行       | 一行数据,一个实体,操作最基本单位  | Java对象 |
| 列       | 最小存储单位,代表一个属性         | 对象属性 |
![](./Mysql数据库+aae463dd-eb19-4409-9a86-4fb7b125cd69/image%202.png)

1. **数据库（Database）**：数据库是存储数据的仓库，是一个长期存储在计算机内的、有组织的、可共享的、统一管理的、大量数据的集合文件。
2. **表（Table）**：表是数据库中的数据集合，它包含行和列。行表示数据记录，列表示数据字段。
3. **视图（View）**：视图是数据库中的虚拟表，它由一个或多个表组合而成，可以屏蔽底层表的细节，只显示需要的信息。
4. **索引（Index）**：索引是数据库中的数据结构，它为数据库中的字段创建一个指向数据记录的指针，以便快速查找数据。
5. **存储过程（Stored Procedure）**：存储过程是一组SQL语句的集合，它可以被重复调用，从而提高数据库的性能。
6. **函数（Function）**：函数是一段代码，它可以被重复调用，从而提高数据库的性能。
7. **触发器（Trigger）**：触发器是在数据库中定义的一组SQL语句，当满足特定条件时，自动执行这些语句。
8. **游标（Cursor）**：游标是数据库中的指针，用于在结果集中移动位置。
9. **锁（Lock）**：锁是数据库中的机制，用于控制对数据库资源的访问，防止并发访问。
10. **角色（Role）**：角色是数据库中的用户组，可以定义一组权限，用于管理数据库中的用户。

## 5. MySQL数据库有什么优点和缺点？
### 答：
#### 优点：
1. **开源免费**：MySQL是开源的，可以免费使用，适合中小企业和个人开发者。
2. **跨平台支持**：MySQL支持多种操作系统，包括Windows、Linux、macOS等。
3. **高性能**：MySQL在处理大量数据时表现出色，适合高并发的应用场景。
4. **易于使用**：MySQL提供了简单易用的图形化管理工具和命令行工具，方便用户进行数据库管理。
5. **社区支持**：MySQL拥有庞大的用户社区，提供丰富的文档和技术支持。

#### 缺点：
1. **功能有限**：与一些商业数据库相比，MySQL在某些高级功能上有所欠缺，如复杂查询优化、数据仓库功能等。
2. **事务处理能力较弱**：虽然MySQL支持事务处理，但在高并发、大数据量的情况下，性能可能不如其他数据库。
3. **插件依赖**：某些功能需要通过插件实现，增加了系统的复杂性和维护成本。
4. **存储引擎选择**：MySQL提供多种存储引擎，但不同引擎的特性和性能差异较大，选择不当可能影响系统性能。

## 6. 分别介绍一下什么是DQL、DML、DDL、DCL和TCL。

### DQL（Data Query Language）
DQL是数据查询语言，用于从数据库中检索数据。最常用的DQL语句是`SELECT`，它用于查询表中的数据。

### DML（Data Manipulation Language）
DML是数据操作语言，用于对数据库中的数据进行增、删、改操作。常用的DML语句包括`INSERT`、`UPDATE`和`DELETE`。

### DDL（Data Definition Language）
DDL是数据定义语言，用于定义和管理数据库中的对象，如表、视图、索引等。常用的DDL语句包括`CREATE`、`ALTER`和`DROP`。

### DCL（Data Control Language）
DCL是数据控制语言，用于控制数据库用户的访问权限。常用的DCL语句包括`GRANT`和`REVOKE`。

### TCL（Transaction Control Language）
TCL是事务控制语言，用于管理数据库事务。常用的TCL语句包括`COMMIT`、`ROLLBACK`和`SAVEPOINT`。

# 用户与建库

## 7.	创建一个MySQL用户briup，并给其赋予权限
### (1)	以具有足够权限的用户身份登录到 MySQL 服务器
### (2)	创建用户（briup)，并为其分配密码
### (3)	根据需要赋予用户授予用户适当的权限
### (4)	授予用户对所有数据库的全部权限
#### 答：
```SQL
C:\Users\86138>mysql -uroot -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 42
Server version: 8.0.38 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create user 'briup'@'%' IDENTIFIED by 'briup';
Query OK, 0 rows affected (0.01 sec)

mysql> grant all on *.* TO 'briup'@'%';
Query OK, 0 rows affected (0.01 sec)

mysql> quit
Bye

C:\Users\86138>mysql -ubriup -p
Enter password: *****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 44
Server version: 8.0.38 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show grants;
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Grants for briup@%



                                                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES, SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE, CREATE ROLE, DROP ROLE ON *.* TO `briup`@`%`

                                                                                                                                              |
| GRANT APPLICATION_PASSWORD_ADMIN,AUDIT_ABORT_EXEMPT,AUDIT_ADMIN,AUTHENTICATION_POLICY_ADMIN,BACKUP_ADMIN,BINLOG_ADMIN,BINLOG_ENCRYPTION_ADMIN,CLONE_ADMIN,CONNECTION_ADMIN,ENCRYPTION_KEY_ADMIN,FIREWALL_EXEMPT,FLUSH_OPTIMIZER_COSTS,FLUSH_STATUS,FLUSH_TABLES,FLUSH_USER_RESOURCES,GROUP_REPLICATION_ADMIN,GROUP_REPLICATION_STREAM,INNODB_REDO_LOG_ARCHIVE,INNODB_REDO_LOG_ENABLE,PASSWORDLESS_USER_ADMIN,PERSIST_RO_VARIABLES_ADMIN,REPLICATION_APPLIER,REPLICATION_SLAVE_ADMIN,RESOURCE_GROUP_ADMIN,RESOURCE_GROUP_USER,ROLE_ADMIN,SENSITIVE_VARIABLES_OBSERVER,SERVICE_CONNECTION_ADMIN,SESSION_VARIABLES_ADMIN,SET_USER_ID,SHOW_ROUTINE,SYSTEM_USER,SYSTEM_VARIABLES_ADMIN,TABLE_ENCRYPTION_ADMIN,TELEMETRY_LOG_ADMIN,XA_RECOVER_ADMIN ON *.* TO `briup`@`%` |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

```
## 8.	创建一个数据库test，并指定其编码格式为utf8
### (1)	以具有足够权限的用户身份登录到 MySQL 服务器
### (2)	创建数据库并切换到该数据库
### (3)	切换使用 test数据库中
#### 答：
```SQL
C:\Users\86138>mysql -ufallcicada -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 45
Server version: 8.0.38 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database test charset=utf8;
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> use test
Database changed
```
## 9.	删除briup用户。
### 答：
```SQL
C:\Users\86138>mysql -uroot -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 46
Server version: 8.0.38 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> DROP USER 'briup'@'%';
Query OK, 0 rows affected (0.01 sec)
```

## 10.	删除test数据库。
### 答：
```SQL
C:\Users\86138>mysql -uroot -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 47
Server version: 8.0.38 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> DROP DATABASE IF EXISTS test;
Query OK, 0 rows affected (0.01 sec)
```
# 基础DQL
### 1、现有一份sql脚本，如何将其导入到MySQL数据库中

> sql脚本文件为230705-estore.sql文件
> <img src=".\assets\image-20230706144244206.png" alt="image-20230706144244206" style="zoom: 40%;" />

要将 SQL 脚本导入到 MySQL 数据库中，操作步骤如下：

1. 确保你具有足够的权限以导入数据到目标数据库。通常，你需要具有 `CREATE` 和 `INSERT` 表的权限。可以使用 root 用户登录到数据库后导入数据。

2. 打开命令行终端或使用图形界面工具（如 phpMyAdmin、Navicat 等）连接到 MySQL 数据库服务器。

```sql
-- 使用root用户登录
mysql -uroot -p
Enter password: ****
-- 输入密码成功登录
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 47
Server version: 8.0.38 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its affiliates. Other names may be trademarks of their respective owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
```

3. 创建目标数据库（如果尚未存在），可以使用以下命令创建数据库：

```sql
CREATE DATABASE estore;
```

4. 选择要使用的数据库：

```sql
USE estore;
```

5. 执行 SQL 脚本以导入数据。在命令行终端中，可以使用以下命令：

```sh
source /path/to/230705-estore.sql;
```

6. 等待导入过程完成。


### 2、请在上述导入的数据基础上，完成以下操作

1）查询图书表中所有图书的名称和作者

```sql
mysql> use estore;
Database changed
mysql> SELECT name, author FROM es_book;
+-------------------------+-----------+
| name                    | author    |
+-------------------------+-----------+
| mysql从入门到精通       | briup     |
| Spring                  | briup     |
| Python                  | briup     |
| 水浒传                  | 施耐庵    |
| 海子诗集                | 海子      |
| 朱自清散文集            | 朱自清    |
+-------------------------+-----------+
6 rows in set (0.00 sec)
```

2）查询图书表中出版社，并且保证结果不重复

```sql
mysql> SELECT DISTINCT publisher FROM es_book;
+-----------------------+
| publisher             |
+-----------------------+
| 机械工业出版社        |
| 上海文艺出版社        |
| 北京教育出版社        |
+-----------------------+
3 rows in set (0.00 sec)
```

3）查询图书表中图书的售价大于等于30的图书名称和作者

```sql
mysql> SELECT name, author FROM es_book WHERE price >= 30;
+-----------+-----------+
| name      | author    |
+-----------+-----------+
| 水浒传    | 施耐庵    |
+-----------+-----------+
1 row in set (0.00 sec)
```

4）查询图书表中出版社为"上海文艺出版社"的图书信息

```sql
mysql> SELECT * FROM es_book WHERE publisher = '上海文艺出版社';
+----+--------------------+-------+--------------+-----------+-----------------------+-------+-----------+--------+-------------+
| id | name               | cover | description  | author    | publisher             | price | store_num | status | category_id |
+----+--------------------+-------+--------------+-----------+-----------------------+-------+-----------+--------+-------------+
|  4 | 水浒传             | NULL  | 四大名著     | 施耐庵    | 上海文艺出版社        | 38.90 |       100 |      0 |           2 |
|  6 | 朱自清散文集       | NULL  | 当代散文     | 朱自清    | 上海文艺出版社        | 20.90 |      NULL |      0 |           3 |
+----+--------------------+-------+--------------+-----------+-----------------------+-------+-----------+--------+-------------+
2 rows in set (0.00 sec)
```

5）查询图书表中图书作者为"briup"并且库存数量大于0的图书名称和库存数量

```sql
mysql> SELECT name, store_num FROM es_book WHERE author = 'briup' AND store_num > 0;
+-------------------------+-----------+
| name                    | store_num |
+-------------------------+-----------+
| mysql从入门到精通       |       100 |
| Spring                  |       200 |
| Python                  |       200 |
+-------------------------+-----------+
3 rows in set (0.00 sec)
```

6）查询图书表中库存数量为空（NULL）的图书名称。

```sql
mysql> SELECT name FROM es_book WHERE store_num IS NULL;
+--------------------+
| name               |
+--------------------+
| 朱自清散文集       |
+--------------------+
1 row in set (0.00 sec)
```

7）查询图书表中名称包含关键字"入门"的图书名称和作者。

```sql
mysql> SELECT name, author FROM es_book WHERE name LIKE '%入门%';
+-------------------------+--------+
| name                    | author |
+-------------------------+--------+
| mysql从入门到精通       | briup  |
+-------------------------+--------+
1 row in set (0.00 sec)
```

8）查询图书表中图书出版社在"机械工业出版社"或"北京教育出版社"的图书名称和作者

```sql
mysql> SELECT name, author FROM es_book WHERE publisher IN ('机械工业出版社', '北京教育出版社');
+-------------------------+--------+
| name                    | author |
+-------------------------+--------+
| mysql从入门到精通       | briup  |
| Spring                  | briup  |
| Python                  | briup  |
| 海子诗集                | 海子   |
+-------------------------+--------+
4 rows in set (0.00 sec)
```

# 运算与分页

### **1、根据上述表及数据完成下列操作**

1）查询图书表中售价最高的图书名称、作者和售价。

```sql
mysql> SELECT name, author, price
    -> FROM es_book
    -> ORDER BY price DESC
    -> LIMIT 1;
+-----------+-----------+-------+
| name      | author    | price |
+-----------+-----------+-------+
| 水浒传    | 施耐庵    | 38.90 |
+-----------+-----------+-------+
1 row in set (0.00 sec)
```

2）查询图书表中库存数量为空或售价为零的图书名称和作者。

```sql
mysql> SELECT name, author
    -> FROM es_book
    -> WHERE store_num IS NULL OR price = 0;
+--------------------+-----------+
| name               | author    |
+--------------------+-----------+
| 朱自清散文集       | 朱自清    |
+--------------------+-----------+
1 row in set (0.00 sec)
```

3）查询图书表图书名称和作者，并且以作者升序排序，作者相同则按照书名降序排序。

```sql
mysql> SELECT name, author
    -> FROM es_book
    -> ORDER BY author ASC, name DESC;
+-------------------------+-----------+
| name                    | author    |
+-------------------------+-----------+
| Spring                  | briup     |
| Python                  | briup     |
| mysql从入门到精通       | briup     |
| 水浒传                  | 施耐庵    |
| 朱自清散文集            | 朱自清    |
| 海子诗集                | 海子      |
+-------------------------+-----------+
6 rows in set (0.00 sec)
```

4）查询图书表中价格最高的前3本图书的名称和作者

```sql
mysql> SELECT name, author
    -> FROM es_book
    -> ORDER BY price DESC
    -> LIMIT 3;
+-------------------------+-----------+
| name                    | author    |
+-------------------------+-----------+
| 水浒传                  | 施耐庵    |
| mysql从入门到精通       | briup     |
| Spring                  | briup     |
+-------------------------+-----------+
3 rows in set (0.00 sec)
```

5）查询图书表中第2页的图书名称和作者，每页显示2条记录，按照图书ID进行升序排序。

```sql
mysql> SELECT name, author
    -> FROM es_book
    -> ORDER BY id ASC
    -> LIMIT 2 OFFSET 2;
+-----------+-----------+
| name      | author    |
+-----------+-----------+
| Python    | briup     |
| 水浒传    | 施耐庵    |
+-----------+-----------+
2 rows in set (0.00 sec)
```




### **2、请执行以下sql语句，完成下列要求**

```mysql
-- 新建数据库,并切换数据库
CREATE DATABASE test;
USE test;

-- 建表
CREATE TABLE student_scores (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  math_score INT,
  physics_score INT,
  chemistry_score INT, 
);

-- 插入数据
INSERT INTO student_scores (id, name, math_score, physics_score, chemistry_score)
VALUES
  (1, 'Alice', 85, 90, 92),
  (2, 'Bob', 78, 85, 80),
  (3, 'Charlie', NULL, 88, 95),
  (4, 'David', 75, 82, 78),
  (5, 'Emma', 90, 92, 88),
  (6, 'Frank', 85, NULL, 86),
  (7, 'Grace', 95, 88, 90),
  (8, 'Henry', 78, 85, 80),
  (9, 'Ivy', 92, 90, 95),
  (10, 'Jack', 82, 78, NULL);
```

数据字典：

| 字段名           | 数据类型     | 约束类型    | 备注     |
| --------------- | ----------- | ----------- | -------- |
| id              | INT         | PRIMARY KEY | 主键     |
| student_name    | VARCHAR(50) | NOT NULL    | 学生姓名 |
| math_score      | INT         |             | 数学成绩 |
| physics_score   | INT         |             | 物理成绩 |
| chemistry_score | INT         |             | 化学成绩 |



1）查询所有学生的总成绩，如果某门成绩为 NULL，则将其视为 0

```sql
mysql> use test
Database changed
mysql> SELECT name,
    ->     COALESCE(math_score, 0) + COALESCE(physics_score, 0) + COALESCE(chemistry_score, 0) AS total_score
    -> FROM student_scores;
+---------+-------------+
| name    | total_score |
+---------+-------------+
| Alice   |         267 |
| Bob     |         243 |
| Charlie |         183 |
| David   |         235 |
| Emma    |         270 |
| Frank   |         171 |
| Grace   |         273 |
| Henry   |         243 |
| Ivy     |         277 |
| Jack    |         160 |
+---------+-------------+
10 rows in set (0.00 sec)
```

2）查询数学成绩大于等于90分的学生姓名和数学成绩

```sql
mysql> SELECT name, math_score
    -> FROM student_scores
    -> WHERE math_score >= 90;
+-------+------------+
| name  | math_score |
+-------+------------+
| Emma  |         90 |
| Grace |         95 |
| Ivy   |         92 |
+-------+------------+
3 rows in set (0.00 sec)

```

3）查询物理成绩为空或化学成绩小于80分的学生姓名和对应科目的成绩

```sql
mysql> SELECT name, physics_score, chemistry_score
    -> FROM student_scores
    -> WHERE physics_score IS NULL OR chemistry_score < 80;
+-------+---------------+-----------------+
| name  | physics_score | chemistry_score |
+-------+---------------+-----------------+
| David |            82 |              78 |
| Frank |          NULL |              86 |
+-------+---------------+-----------------+
2 rows in set (0.00 sec)
```

4）查询平均成绩大于等于85分的学生姓名和平均成绩，如果某门成绩为 NULL，则将其视为 0

```sql
mysql> SELECT name,
    ->     (COALESCE(math_score, 0) + COALESCE(physics_score, 0) + COALESCE(chemistry_score, 0)) / 3 AS average_score
    -> FROM student_scores
    -> HAVING average_score >= 85;
+-------+---------------+
| name  | average_score |
+-------+---------------+
| Alice |       89.0000 |
| Emma  |       90.0000 |
| Grace |       91.0000 |
| Ivy   |       92.3333 |
+-------+---------------+
4 rows in set (0.00 sec)
```

5）查询总分最高的学生信息

```sql
mysql> SELECT id, name, math_score, physics_score, chemistry_score
    -> FROM student_scores
    -> ORDER BY (COALESCE(math_score, 0) + COALESCE(physics_score, 0) + COALESCE(chemistry_score, 0)) DESC
    -> LIMIT 1;
+----+------+------------+---------------+-----------------+
| id | name | math_score | physics_score | chemistry_score |
+----+------+------------+---------------+-----------------+
|  9 | Ivy  |         92 |            90 |              95 |
+----+------+------------+---------------+-----------------+
1 row in set (0.00 sec)
SELECT id, name, math_score, physics_score, chemistry_score
FROM student_scores
ORDER BY (COALESCE(math_score, 0) + COALESCE(physics_score, 0) + COALESCE(chemistry_score, 0)) DESC
LIMIT 1;
```





# 多表查询

> 请已有的estore数据库中执行下列sql语句：

```sql
-- 添加10条数据到es_address表
INSERT INTO es_address (id, receiver_name, urban_addr, detail_addr, phone, user_id)
VALUES
  (6, '赵', '江苏省南京市鼓楼区', '中山南路123号', '13800010006', 3),
  (7, '王五', '江苏省苏州市相城区', '太湖大道999号', '13800010007', 2),
  (8, '刘六', '广东省深圳市南山区', '科技园大道123号', '13800010008', 4),
  (9, '陈七', '北京市朝阳区', '建国路123号', '13800010009', 1),
  (10, '杨八', '浙江省杭州市西湖区', '文二路888号', '13800010010', 5);

-- 修改数据
update es_book set store_num = 100 where id = 6;

-- 添加10条数据到es_book表
INSERT INTO es_book (id, name, cover, description, author, publisher, price, store_num, status, category_id)
VALUES
  (7, 'C++ Primer', NULL, 'C++语言入门教程', 'Stanley B. Lippman', '机械工业出版社', 49.90, 100, 0, 5),
  (8, 'JavaScript高级程序设计', NULL, 'JavaScript编程指南', 'Nicholas C. Zakas', '机械工业出版社', 59.90, 200, 0, 5),
  (9, '数据结构与算法', NULL, '数据结构与算法入门', 'Thomas H. Cormen', '机械工业出版社', 39.90, 150, 0, 7),
  (10, '红楼梦', NULL, '中国古代四大名著之一', '曹雪芹', '上海文艺出版社', 42.90, 100, 0, 2),
  (11, '西游记', NULL, '中国古代四大名著之一', '吴承恩', '上海文艺出版社', 42.90, 100, 0, 2),
  (12, '三国演义', NULL, '中国古代四大名著之一', '罗贯中', '上海文艺出版社', 42.90, 100, 0, 2),
  (13, '数据挖掘导论', NULL, '数据挖掘入门教程', 'Jiawei Han', '机械工业出版社', 49.90, 100, 0, 7),
  (14, '计算机网络', NULL, '计算机网络基础知识', 'Andrew S. Tanenbaum', '机械工业出版社', 39.90, 150, 0, 5),
  (15, '论语', NULL, '中国古代经典著作', '孔子', '北京教育出版社', 19.90, 200, 0, 8),
  (16, '大学语文', NULL, '大学语文课程教材', '佚名', '北京教育出版社', 29.90, 150, 0, 8);
 
 -- 添加10条数据到es_category表
INSERT INTO es_category (id, name, description, parent_id)
VALUES
  (9, '经济学', '经济学大类', NULL),
  (10, '金融学', '经济学子类1', 9),
  (11, '管理学', '经济学子类2', 9),
  (12, '法学', '法学大类', NULL),
  (13, '刑法学', '法学子类1', 12),
  (14, '民法学', '法学子类2', 12),
  (15, '外国语', '外语大类', NULL),
  (16, '英语', '外语子类1', 15),
  (17, '法语', '外语子类2', 15),
  (18, '心理学', '心理学大类', NULL);

-- 添加11条数据到es_shopcar表
INSERT INTO es_shopcar (id, user_id, book_id, num)
VALUES
  (7, 1, 5, 2),
  (8, 2, 1, 1),
  (9, 2, 2, 1),
  (10, 3, 3, 2),
  (11, 4, 4, 1),
  (12, 4, 5, 3),
  (13, 5, 3, 1),
  (14, 5, 4, 2),
  (15, 1, 6, 1),
  (16, 2, 7, 1),
  (17, 5, 8, 1);

```

### **1、请根据上述表与数据完成下列操作**

1）查询所有图书分类及其父分类名称

```sql
mysql> use estore
Database changed
mysql> SELECT c1.name AS category_name, c2.name AS parent_category_name
    -> FROM es_category c1
    -> LEFT JOIN es_category c2 ON c1.parent_id = c2.id;
+---------------+----------------------+
| category_name | parent_category_name |
+---------------+----------------------+
| 文学          | NULL                 |
| 小说          | 文学                 |
| 散文          | 文学                 |
| 诗歌          | 文学                 |
| 计算机        | NULL                 |
| Java          | 计算机               |
| 人工智能      | 计算机               |
| 时政          | NULL                 |
| 经济学        | NULL                 |
| 金融学        | 经济学               |
| 管理学        | 经济学               |
| 法学          | NULL                 |
| 刑法学        | 法学                 |
| 民法学        | 法学                 |
| 外国语        | NULL                 |
| 英语          | 外国语               |
| 法语          | 外国语               |
| 心理学        | NULL                 |
+---------------+----------------------+
18 rows in set (0.00 sec)
```

2） 查询图书分类为 "小说" 的图书名称、价格和出版社

```sql
mysql> SELECT b.name, b.price, b.publisher
    -> FROM es_book b
    -> JOIN es_category c ON b.category_id = c.id
    -> WHERE c.name = '小说';
+--------------+-------+-----------------------+
| name         | price | publisher             |
+--------------+-------+-----------------------+
| 水浒传       | 38.90 | 上海文艺出版社        |
| 红楼梦       | 42.90 | 上海文艺出版社        |
| 西游记       | 42.90 | 上海文艺出版社        |
| 三国演义     | 42.90 | 上海文艺出版社        |
+--------------+-------+-----------------------+
4 rows in set (0.00 sec)
```

3） 查询下单客户ID为 4 的收货地址和购物车中的图书名称。

```sql
mysql> SELECT a.urban_addr, a.detail_addr, b.name AS book_name
    -> FROM es_address a
    -> JOIN es_shopcar s ON a.user_id = s.user_id
    -> JOIN es_book b ON s.book_id = b.id
    -> WHERE a.user_id = 4;
+-----------------------------+----------------------------+--------------+
| urban_addr                  | detail_addr                | book_name    |
+-----------------------------+----------------------------+--------------+
| 香港新界西荃湾区            | 德海街千色汇G031A室        | 水浒传       |
| 香港新界西荃湾区            | 德海街千色汇G031A室        | 海子诗集     |
| 广东省深圳市南山区          | 科技园大道123号            | 水浒传       |
| 广东省深圳市南山区          | 科技园大道123号            | 海子诗集     |
+-----------------------------+----------------------------+--------------+
4 rows in set (0.00 sec)

```

4）查询每个用户的用户名和购物车中购买的图书名称，如果没有购物车记录，则显示图书名称为 NULL

```sql
mysql> SELECT u.username, b.name AS book_name
    -> FROM es_user u
    -> LEFT JOIN es_shopcar s ON u.id = s.user_id
    -> LEFT JOIN es_book b ON s.book_id = b.id;
+-----------+------------------------------+
| username  | book_name                    |
+-----------+------------------------------+
| jack      | mysql从入门到精通            |
| jack      | Spring                       |
| jack      | Python                       |
| jack      | 水浒传                       |
| jack      | C++ Primer                   |
| tom       | mysql从入门到精通            |
| tom       | Python                       |
| tom       | 海子诗集                     |
| tom       | 朱自清散文集                 |
| 李小龙    | Spring                       |
| 李小龙    | Python                       |
| 李秋水    | Python                       |
| 李秋水    | 水浒传                       |
| 李秋水    | JavaScript高级程序设计       |
| 李莫愁    | 水浒传                       |
| 李莫愁    | 海子诗集                     |
+-----------+------------------------------+
16 rows in set (0.00 sec)

```

5）查询购物车中购买图书数量大于等于2本的用户及其购买的图书名称和购买数量

```sql
mysql> SELECT u.username, b.name AS book_name, s.num
    -> FROM es_user u
    -> JOIN es_shopcar s ON u.id = s.user_id
    -> JOIN es_book b ON s.book_id = b.id
    -> WHERE s.num >= 2;
+-----------+--------------+------+
| username  | book_name    | num  |
+-----------+--------------+------+
| tom       | Python       |    2 |
| jack      | 水浒传       |    2 |
| 李小龙    | Spring       |    3 |
| tom       | 海子诗集     |    2 |
| 李小龙    | Python       |    2 |
| 李莫愁    | 海子诗集     |    3 |
| 李秋水    | 水浒传       |    2 |
+-----------+--------------+------+
7 rows in set (0.00 sec)

```

6）查询购物车中购买图书价格大于等于50的用户及其购买的图书名称和图书价格

```sql
mysql> SELECT u.username, b.name AS book_name, b.price
    -> FROM es_user u
    -> JOIN es_shopcar s ON u.id = s.user_id
    -> JOIN es_book b ON s.book_id = b.id
    -> WHERE b.price >= 50;
+-----------+------------------------------+-------+
| username  | book_name                    | price |
+-----------+------------------------------+-------+
| 李秋水    | JavaScript高级程序设计       | 59.90 |
+-----------+------------------------------+-------+
1 row in set (0.00 sec)

```

7）查询购物车中有图书的用户的用户姓名、收货人姓名、城市地址和详细地址

```sql
mysql> SELECT u.username, a.receiver_name, a.urban_addr, a.detail_addr
    -> FROM es_user u
    -> JOIN es_address a ON u.id = a.user_id
    -> JOIN es_shopcar s ON u.id = s.user_id;
+-----------+---------------+-----------------------------------+----------------------------+
| username  | receiver_name | urban_addr                        | detail_addr                |
+-----------+---------------+-----------------------------------+----------------------------+
| jack      | 费俊龙        | 江苏省苏州市昆山市                | 巴城镇景城路108号          |
| jack      | 费俊龙        | 江苏省苏州市昆山市                | 巴城镇景城路108号          |
| jack      | 费俊龙        | 江苏省苏州市昆山市                | 巴城镇景城路108号          |
| jack      | 费俊龙        | 江苏省苏州市昆山市                | 巴城镇景城路108号          |
| jack      | 费俊龙        | 江苏省苏州市昆山市                | 巴城镇景城路108号          |
| jack      | 王五          | 江苏省苏州市相城区                | 太湖大道999号              |
| jack      | 王五          | 江苏省苏州市相城区                | 太湖大道999号              |
| jack      | 王五          | 江苏省苏州市相城区                | 太湖大道999号              |
| jack      | 王五          | 江苏省苏州市相城区                | 太湖大道999号              |
| jack      | 王五          | 江苏省苏州市相城区                | 太湖大道999号              |
| tom       | 张            | 江苏省苏州市金阊区                | 山塘街虎丘山门             |
| tom       | 张            | 江苏省苏州市金阊区                | 山塘街虎丘山门             |
| tom       | 张            | 江苏省苏州市金阊区                | 山塘街虎丘山门             |
| tom       | 张            | 江苏省苏州市金阊区                | 山塘街虎丘山门             |
| tom       | 李小龙        | 香港特别行政区九龙城区            | 砵兰街363号地下C铺         |
| tom       | 李小龙        | 香港特别行政区九龙城区            | 砵兰街363号地下C铺         |
| tom       | 李小龙        | 香港特别行政区九龙城区            | 砵兰街363号地下C铺         |
| tom       | 李小龙        | 香港特别行政区九龙城区            | 砵兰街363号地下C铺         |
| tom       | 陈七          | 北京市朝阳区                      | 建国路123号                |
| tom       | 陈七          | 北京市朝阳区                      | 建国路123号                |
| tom       | 陈七          | 北京市朝阳区                      | 建国路123号                |
| tom       | 陈七          | 北京市朝阳区                      | 建国路123号                |
| 李小龙    | 赵            | 江苏省南京市鼓楼区                | 中山南路123号              |
| 李小龙    | 赵            | 江苏省南京市鼓楼区                | 中山南路123号              |
| 李秋水    | 天山童姥      | 宁夏省银川市市                    | 天山缥缈峰灵鹫宫           |
| 李秋水    | 天山童姥      | 宁夏省银川市市                    | 天山缥缈峰灵鹫宫           |
| 李秋水    | 天山童姥      | 宁夏省银川市市                    | 天山缥缈峰灵鹫宫           |
| 李秋水    | 杨八          | 浙江省杭州市西湖区                | 文二路888号                |
| 李秋水    | 杨八          | 浙江省杭州市西湖区                | 文二路888号                |
| 李秋水    | 杨八          | 浙江省杭州市西湖区                | 文二路888号                |
| 李莫愁    | 李若彤        | 香港新界西荃湾区                  | 德海街千色汇G031A室        |
| 李莫愁    | 李若彤        | 香港新界西荃湾区                  | 德海街千色汇G031A室        |
| 李莫愁    | 刘六          | 广东省深圳市南山区                | 科技园大道123号            |
| 李莫愁    | 刘六          | 广东省深圳市南山区                | 科技园大道123号            |
+-----------+---------------+-----------------------------------+----------------------------+
34 rows in set (0.00 sec)
```

8）请列出购买了价格大于50的图书的用户的收货人姓名、城市地址和电话号码。

```sql
mysql> SELECT a.receiver_name, a.urban_addr, a.phone
    -> FROM es_address a
    -> JOIN es_shopcar s ON a.user_id = s.user_id
    -> JOIN es_book b ON s.book_id = b.id
    -> WHERE b.price > 50;
+---------------+-----------------------------+-------------+
| receiver_name | urban_addr                  | phone       |
+---------------+-----------------------------+-------------+
| 天山童姥      | 宁夏省银川市市              | 13800010005 |
| 杨八          | 浙江省杭州市西湖区          | 13800010010 |
+---------------+-----------------------------+-------------+
2 rows in set (0.00 sec)
```

9）查询购买了属于“诗歌”类别的图书的用户的收货人姓名和电话号码

```sql
mysql> SELECT a.receiver_name, a.phone
    -> FROM es_address a
    -> JOIN es_shopcar s ON a.user_id = s.user_id
    -> JOIN es_book b ON s.book_id = b.id
    -> JOIN es_category c ON b.category_id = c.id
    -> WHERE c.name = '诗歌';
+---------------+-------------+
| receiver_name | phone       |
+---------------+-------------+
| 张            | 13800010001 |
| 李小龙        | 13800010002 |
| 陈七          | 13800010009 |
| 李若彤        | 13800010003 |
| 刘六          | 13800010008 |
+---------------+-------------+
5 rows in set (0.00 sec)

```





# 函数

### 1、请根据上述表和数据完成下列操作

1）查询每个用户的注册时间，并将时间转换为年月日格式

```sql
mysql> SELECT username, DATE_FORMAT(register_time, '%Y-%m-%d') AS formatted_date
    -> FROM es_user;
+-----------+----------------+
| username  | formatted_date |
+-----------+----------------+
| tom       | 2023-07-04     |
| jack      | 2023-07-04     |
| 李小龙    | 2023-07-04     |
| 李莫愁    | 2023-07-04     |
| 李秋水    | 2023-07-04     |
+-----------+----------------+
5 rows in set (0.00 sec)

```

2）查询每本图书的名称和描述，同时将描述截断为前50个字符

```sql
mysql> SELECT name, LEFT(description, 50) AS short_description
    -> FROM es_book;
+------------------------------+---------------------------------+
| name                         | short_description               |
+------------------------------+---------------------------------+
| mysql从入门到精通            | briup推荐，学习mysql必备        |
| Spring                       | Spring学习推荐                  |
| Python                       | python基本语法学习              |
| 水浒传                       | 四大名著                        |
| 海子诗集                     | 现代诗                          |
| 朱自清散文集                 | 当代散文                        |
| C++ Primer                   | C++语言入门教程                 |
| JavaScript高级程序设计       | JavaScript编程指南              |
| 数据结构与算法               | 数据结构与算法入门              |
| 红楼梦                       | 中国古代四大名著之一            |
| 西游记                       | 中国古代四大名著之一            |
| 三国演义                     | 中国古代四大名著之一            |
| 数据挖掘导论                 | 数据挖掘入门教程                |
| 计算机网络                   | 计算机网络基础知识              |
| 论语                         | 中国古代经典著作                |
| 大学语文                     | 大学语文课程教材                |
+------------------------------+---------------------------------+
16 rows in set (0.00 sec)

```

3）查询每个图书的价格，同时将价格取整并添加人民币的货币符号

```sql
mysql> SELECT name, CONCAT('￥', FLOOR(price)) AS price_with_currency
    -> FROM es_book;
+------------------------------+---------------------+
| name                         | price_with_currency |
+------------------------------+---------------------+
| mysql从入门到精通            | ￥28                |
| Spring                       | ￥28                |
| Python                       | ￥28                |
| 水浒传                       | ￥38                |
| 海子诗集                     | ￥15                |
| 朱自清散文集                 | ￥20                |
| C++ Primer                   | ￥49                |
| JavaScript高级程序设计       | ￥59                |
| 数据结构与算法               | ￥39                |
| 红楼梦                       | ￥42                |
| 西游记                       | ￥42                |
| 三国演义                     | ￥42                |
| 数据挖掘导论                 | ￥49                |
| 计算机网络                   | ￥39                |
| 论语                         | ￥19                |
| 大学语文                     | ￥29                |
+------------------------------+---------------------+
16 rows in set (0.00 sec)

```

4）查询每个用户的购物车中的图书总数

```sql
mysql> SELECT user_id, SUM(num) AS total_books
    -> FROM es_shopcar
    -> GROUP BY user_id;
+---------+-------------+
| user_id | total_books |
+---------+-------------+
|       1 |           6 |
|       2 |           6 |
|       3 |           5 |
|       4 |           4 |
|       5 |           4 |
+---------+-------------+
5 rows in set (0.01 sec)
```

5）查询购物车中购买图书数量大于等于5本的用户ID和图书数量，如果用户购买图书总数大于等于5本显示“满足条件”，否则显示“不满足条件”

```sql
mysql> SELECT user_id, SUM(num) AS total_books,
    ->     IF(SUM(num) >= 5, '满足条件', '不满足条件') AS condition_met
    -> FROM es_shopcar
    -> GROUP BY user_id;
+---------+-------------+-----------------+
| user_id | total_books | condition_met   |
+---------+-------------+-----------------+
|       1 |           6 | 满足条件        |
|       2 |           6 | 满足条件        |
|       3 |           5 | 满足条件        |
|       4 |           4 | 不满足条件      |
|       5 |           4 | 不满足条件      |
+---------+-------------+-----------------+
5 rows in set (0.00 sec)

```

6）查询id为1的用户的购物车中图书的总价值

```sql
mysql> SELECT SUM(b.price * s.num) AS total_value
    -> FROM es_shopcar s
    -> JOIN es_book b ON s.book_id = b.id
    -> WHERE s.user_id = 1;
+-------------+
| total_value |
+-------------+
|      139.40 |
+-------------+
1 row in set (0.00 sec)

```

7）查询购物车中购买图书的总金额，同时显示“满100元免运费”或“不满足条件”

```sql
mysql> SELECT user_id, SUM(b.price * s.num) AS total_amount,
    ->     IF(SUM(b.price * s.num) >= 100, '满100元免运费', '不满足条件') AS shipping_condition
    -> FROM es_shopcar s
    -> JOIN es_book b ON s.book_id = b.id
    -> GROUP BY user_id;
+---------+--------------+--------------------+
| user_id | total_amount | shipping_condition |
+---------+--------------+--------------------+
|       1 |       139.40 | 满100元免运费      |
|       2 |       214.40 | 满100元免运费      |
|       3 |       144.50 | 满100元免运费      |
|       4 |        86.60 | 不满足条件         |
|       5 |       166.60 | 满100元免运费      |
+---------+--------------+--------------------+
5 rows in set (0.00 sec)
```

8）请查询出所有书籍的销售情况，统计展示其类别，根据销售数据显示为畅销、一般、滞销三个等级（销量低于2为滞销，不低于2但低于5为一般，不低于5为畅销）

```sql
mysql> SELECT b.name, c.name AS category_name, SUM(s.num) AS total_sales,
    ->     CASE
    ->         WHEN SUM(s.num) < 2 THEN '滞销'
    ->         WHEN SUM(s.num) < 5 THEN '一般'
    ->         ELSE '畅销'
    ->     END AS sales_status
    -> FROM es_shopcar s
    -> JOIN es_book b ON s.book_id = b.id
    -> JOIN es_category c ON b.category_id = c.id
    -> GROUP BY b.id, c.name;
+------------------------------+---------------+-------------+--------------+
| name                         | category_name | total_sales | sales_status |
+------------------------------+---------------+-------------+--------------+
| mysql从入门到精通            | Java          |           2 | 一般         |
| Python                       | 人工智能      |           6 | 畅销         |
| 水浒传                       | 小说          |           5 | 畅销         |
| Spring                       | Java          |           4 | 一般         |
| 海子诗集                     | 诗歌          |           5 | 畅销         |
| 朱自清散文集                 | 散文          |           1 | 滞销         |
| C++ Primer                   | 计算机        |           1 | 滞销         |
| JavaScript高级程序设计       | 计算机        |           1 | 滞销         |
+------------------------------+---------------+-------------+--------------+
8 rows in set (0.00 sec)
```

9）查询每个用户的购物车中图书的平均价格

```sql
mysql> SELECT user_id, AVG(b.price) AS average_price
    -> FROM es_shopcar s
    -> JOIN es_book b ON s.book_id = b.id
    -> GROUP BY user_id;
+---------+---------------+
| user_id | average_price |
+---------+---------------+
|       1 |     23.650000 |
|       2 |     35.100000 |
|       3 |     28.900000 |
|       4 |     27.400000 |
|       5 |     42.566667 |
+---------+---------------+
5 rows in set 
```

10）查询购物车中被购买次数最多的图书,显示购买用户和对应的图书信息

```sql
mysql> SELECT s.user_id, b.name, b.author, b.price, SUM(s.num) AS total_purchases
    -> FROM es_shopcar s
    -> JOIN es_book b ON s.book_id = b.id
    -> GROUP BY s.user_id, b.name, b.author, b.price
    -> ORDER BY total_purchases DESC
    -> LIMIT 1;
+---------+--------+--------+-------+-----------------+
| user_id | name   | author | price | total_purchases |
+---------+--------+--------+-------+-----------------+
|       3 | Spring | briup  | 28.90 |               3 |
+---------+--------+--------+-------+-----------------+
1 row in set (0.00 sec)
```

11）查询每个图书分类下的图书数量和总价格，并按数量降序排序

```sql
mysql> SELECT c.name AS category_name, COUNT(b.id) AS book_count, SUM(b.price) AS total_price
    -> FROM es_book b
    -> JOIN es_category c ON b.category_id = c.id
    -> GROUP BY c.id
    -> ORDER BY book_count DESC;
+---------------+------------+-------------+
| category_name | book_count | total_price |
+---------------+------------+-------------+
| 小说          |          4 |      167.60 |
| 人工智能      |          3 |      118.70 |
| 计算机        |          3 |      149.70 |
| Java          |          2 |       57.80 |
| 时政          |          2 |       49.80 |
| 诗歌          |          1 |       15.90 |
| 散文          |          1 |       20.90 |
+---------------+------------+-------------+
7 rows in set (0.01 sec)

```

12）查询每个图书分类下价格最低的图书名称和价格,没有图书的分类不展示,查询到的结果按照分类id升序排序

```sql
mysql> SELECT c.id AS category_id, c.name AS category_name, b.name AS book_name, MIN(b.price) AS lowest_price
    -> FROM es_book b
    -> JOIN es_category c ON b.category_id = c.id
    -> GROUP BY c.id, c.name, b.name
    -> ORDER BY c.id ASC;
+-------------+---------------+------------------------------+--------------+
| category_id | category_name | book_name                    | lowest_price |
+-------------+---------------+------------------------------+--------------+
|           2 | 小说          | 三国演义                     |        42.90 |
|           2 | 小说          | 水浒传                       |        38.90 |
|           2 | 小说          | 红楼梦                       |        42.90 |
|           2 | 小说          | 西游记                       |        42.90 |
|           3 | 散文          | 朱自清散文集                 |        20.90 |
|           4 | 诗歌          | 海子诗集                     |        15.90 |
|           5 | 计算机        | C++ Primer                   |        49.90 |
|           5 | 计算机        | JavaScript高级程序设计       |        59.90 |
|           5 | 计算机        | 计算机网络                   |        39.90 |
|           6 | Java          | mysql从入门到精通            |        28.90 |
|           6 | Java          | Spring                       |        28.90 |
|           7 | 人工智能      | Python                       |        28.90 |
|           7 | 人工智能      | 数据挖掘导论                 |        49.90 |
|           7 | 人工智能      | 数据结构与算法               |        39.90 |
|           8 | 时政          | 大学语文                     |        29.90 |
|           8 | 时政          | 论语                         |        19.90 |
+-------------+---------------+-
```

# 子查询

### 1、请根据上述表和数据使用子查询完成下列操作

1）查询购物车中图书价格大于平均价格的图书名称和价格

```sql
mysql> SELECT name, price
    -> FROM es_book
    -> WHERE price > (SELECT AVG(price) FROM es_book);
+------------------------------+-------+
| name                         | price |
+------------------------------+-------+
| 水浒传                       | 38.90 |
| C++ Primer                   | 49.90 |
| JavaScript高级程序设计       | 59.90 |
| 数据结构与算法               | 39.90 |
| 红楼梦                       | 42.90 |
| 西游记                       | 42.90 |
| 三国演义                     | 42.90 |
| 数据挖掘导论                 | 49.90 |
| 计算机网络                   | 39.90 |
+------------------------------+-------+
9 rows in set (0.00 sec)
```

2）查询购物车中购买图书数量最多的用户信息

```sql
mysql> SELECT *
    -> FROM es_user
    -> WHERE id = (SELECT user_id
    ->             FROM es_shopcar
    ->             GROUP BY user_id
    ->             ORDER BY SUM(num) DESC
    ->             LIMIT 1);
+----+----------+----------+-------------+--------+--------+--------+------------+---------------------+
| id | username | password | phone       | avatar | gender | status | birthday   | register_time       |
+----+----------+----------+-------------+--------+--------+--------+------------+---------------------+
|  1 | tom      | 123456   | 13700010001 | 1.jpg  | 0      |      0 | 2000-12-11 | 2023-07-04 15:59:12 |
+----+----------+----------+-------------+--------+--------+--------+------------+---------------------+
1 row in set (0.01 sec)
```

3）查询购物车中购买图书数量超过5本的用户信息

```sql
mysql> SELECT *
    -> FROM es_user
    -> WHERE id IN (SELECT user_id
    ->              FROM es_shopcar
    ->              GROUP BY user_id
    ->              HAVING SUM(num) > 5);
+----+----------+----------+-------------+--------+--------+--------+------------+---------------------+
| id | username | password | phone       | avatar | gender | status | birthday   | register_time       |
+----+----------+----------+-------------+--------+--------+--------+------------+---------------------+
|  1 | tom      | 123456   | 13700010001 | 1.jpg  | 0      |      0 | 2000-12-11 | 2023-07-04 15:59:12 |
|  2 | jack     | 123456   | 13700010002 | 2.jpg  | 0      |      0 | 2001-11-11 | 2023-07-04 15:59:12 |
+----+----------+----------+-------------+--------+--------+--------+------------+---------------------+
2 rows in set (0.00 sec)
```

4）查询购物车中购买了属于“诗歌”类别的图书的用户信息

```sql
mysql> SELECT *
    -> FROM es_user
    -> WHERE id IN (SELECT DISTINCT s.user_id
    ->              FROM es_shopcar s
    ->              JOIN es_book b ON s.book_id = b.id
    ->              JOIN es_category c ON b.category_id = c.id
    ->              WHERE c.name = '诗歌');
+----+-----------+----------+-------------+--------+--------+--------+------------+---------------------+
| id | username  | password | phone       | avatar | gender | status | birthday   | register_time       |
+----+-----------+----------+-------------+--------+--------+--------+------------+---------------------+
|  1 | tom       | 123456   | 13700010001 | 1.jpg  | 0      |      0 | 2000-12-11 | 2023-07-04 15:59:12 |
|  4 | 李莫愁    | 123456   | 13700010004 | 4.jpg  | 1      |      0 | 2000-11-11 | 2023-07-04 16:03:03 |
+----+-----------+----------+-------------+--------+--------+--------+------------+---------------------+
2 rows in set (0.00 sec)
```

5）查询id为3的用户添加到购物车中的所有书籍的详细信息，包括书籍的名字、书籍的作者、书籍的描述、书籍的出版社以及书籍的价格

```sql
mysql> SELECT b.name, b.author, b.description, b.publisher, b.price
    -> FROM es_book b
    -> WHERE b.id IN (SELECT book_id
    ->                FROM es_shopcar
    ->                WHERE user_id = 3);
+--------+--------+--------------------------+-----------------------+-------+
| name   | author | description              | publisher             | price |
+--------+--------+--------------------------+-----------------------+-------+
| Spring | briup  | Spring学习推荐           | 机械工业出版社        | 28.90 |
| Python | briup  | python基本语法学习       | 机械工业出版社        | 28.90 |
+--------+--------+--------------------------+-----------------------+-------+
2 rows in set (0.00 sec)

```

6）请查询和id为3的用户想要购买相同数量以及相同书籍的用户信息，同时显示该书籍的名字以及该书籍的购买数量

```sql
mysql> SELECT u.*, b.name AS book_name, s.num
    -> FROM es_user u
    -> JOIN es_shopcar s ON u.id = s.user_id
    -> JOIN es_book b ON s.book_id = b.id
    -> WHERE (s.book_id, s.num) IN (SELECT book_id, num
    ->                              FROM es_shopcar
    ->                              WHERE user_id = 3);
+----+-----------+----------+-------------+--------+--------+--------+------------+---------------------+-----------+------+
| id | username  | password | phone       | avatar | gender | status | birthday   | register_time       | book_name | num  |
+----+-----------+----------+-------------+--------+--------+--------+------------+---------------------+-----------+------+
|  3 | 李小龙    | 123456   | 13700010003 | 3.jpg  | 0      |      0 | 2002-10-11 | 2023-07-04 15:59:12 | Spring    |    3 |
|  1 | tom       | 123456   | 13700010001 | 1.jpg  | 0      |      0 | 2000-12-11 | 2023-07-04 15:59:12 | Python    |    2 |
|  3 | 李小龙    | 123456   | 13700010003 | 3.jpg  | 0      |      0 | 2002-10-11 | 2023-07-04 15:59:12 | Python    |    2 |
+----+-----------+----------+-------------+--------+--------+--------+------------+---------------------+-----------+------+
3 rows in set (0.00 sec)

```

7）请查询和2号用户同一天注册,并且性别相同的用户详细信息,性别展示为男和女

```sql
mysql> SELECT u.*,
    ->        CASE u.gender
    ->            WHEN 'M' THEN '男'
    ->            WHEN 'F' THEN '女'
    ->        END AS gender_display
    -> FROM es_user u
    -> WHERE u.register_time = (SELECT register_time
    ->                          FROM es_user
    ->                          WHERE id = 2)
    ->   AND u.gender = (SELECT gender
    ->                   FROM es_user
    ->                   WHERE id = 2);
+----+-----------+----------+-------------+--------+--------+--------+------------+---------------------+----------------+
| id | username  | password | phone       | avatar | gender | status | birthday   | register_time       | gender_display |
+----+-----------+----------+-------------+--------+--------+--------+------------+---------------------+----------------+
|  1 | tom       | 123456   | 13700010001 | 1.jpg  | 0      |      0 | 2000-12-11 | 2023-07-04 15:59:12 | NULL           |
|  2 | jack      | 123456   | 13700010002 | 2.jpg  | 0      |      0 | 2001-11-11 | 2023-07-04 15:59:12 | NULL           |
|  3 | 李小龙    | 123456   | 13700010003 | 3.jpg  | 0      |      0 | 2002-10-11 | 2023-07-04 15:59:12 | NULL           |
+----+-----------+----------+-------------+--------+--------+--------+------------+---------------------+----------------+
3 rows in set (0.00 sec)

```

8）查询购物车中购买图书数量超过各用户购买图书的平均数量的用户信息

```sql
mysql> SELECT *
    -> FROM es_user
    -> WHERE id IN (SELECT user_id
    ->              FROM es_shopcar
    ->              GROUP BY user_id
    ->              HAVING SUM(num) > (SELECT AVG(total_num)
    ->                                 FROM (SELECT SUM(num) AS total_num
    ->                                       FROM es_shopcar
    ->                                       GROUP BY user_id) AS avg_num));
+----+----------+----------+-------------+--------+--------+--------+------------+---------------------+
| id | username | password | phone       | avatar | gender | status | birthday   | register_time       |
+----+----------+----------+-------------+--------+--------+--------+------------+---------------------+
|  1 | tom      | 123456   | 13700010001 | 1.jpg  | 0      |      0 | 2000-12-11 | 2023-07-04 15:59:12 |
|  2 | jack     | 123456   | 13700010002 | 2.jpg  | 0      |      0 | 2001-11-11 | 2023-07-04 15:59:12 |
+----+----------+----------+-------------+--------+--------+--------+------------+---------------------+
2 rows in set (0.00 sec)

```

9）查询每个用户购物车中图书价格最高的图书信息（包括图书名称和价格）

```sql
mysql> SELECT u.id AS user_id, b.name, b.price
    -> FROM es_user u
    -> JOIN es_shopcar s ON u.id = s.user_id
    -> JOIN es_book b ON s.book_id = b.id
    -> WHERE (b.price, s.user_id) IN (SELECT MAX(b.price), s.user_id
    ->                                FROM es_shopcar s
    ->                                JOIN es_book b ON s.book_id = b.id
    ->                                GROUP BY s.user_id);
+---------+------------------------------+-------+
| user_id | name                         | price |
+---------+------------------------------+-------+
|       2 | C++ Primer                   | 49.90 |
|       1 | mysql从入门到精通            | 28.90 |
|       1 | Python                       | 28.90 |
|       3 | Spring                       | 28.90 |
|       3 | Python                       | 28.90 |
|       5 | JavaScript高级程序设计       | 59.90 |
|       4 | 水浒传                       | 38.90 |
+---------+------------------------------+-------+
7 rows in set (0.00 sec)
```

10）请查询出所有书籍的销售情况，统计展示其类别，根据销售数据显示为畅销、一般、滞销三个等级（销量低于2为滞销，不低于2但低于5为一般，不低于5为畅销）

```sql

mysql> SELECT b.name, c.name AS category_name, SUM(s.num) AS total_sales,
    ->        CASE
    ->            WHEN SUM(s.num) < 2 THEN '滞销'
    ->            WHEN SUM(s.num) < 5 THEN '一般'
    ->            ELSE '畅销'
    ->        END AS sales_status
    -> FROM es_shopcar s
    -> JOIN es_book b ON s.book_id = b.id
    -> JOIN es_category c ON b.category_id = c.id
    -> GROUP BY b.id, c.name;
+------------------------------+---------------+-------------+--------------+
| name                         | category_name | total_sales | sales_status |
+------------------------------+---------------+-------------+--------------+
| mysql从入门到精通            | Java          |           2 | 一般         |
| Python                       | 人工智能      |           6 | 畅销         |
| 水浒传                       | 小说          |           5 | 畅销         |
| Spring                       | Java          |           4 | 一般         |
| 海子诗集                     | 诗歌          |           5 | 畅销         |
| 朱自清散文集                 | 散文          |           1 | 滞销         |
| C++ Primer                   | 计算机        |           1 | 滞销         |
| JavaScript高级程序设计       | 计算机        |           1 | 滞销         |
+------------------------------+---------------+-------------+--------------+
8 rows in set (0.00 sec)

```



# 数据操作

> 请已有的estore数据库中执行下列sql语句：

```sql
-- 订单表
DROP TABLE IF EXISTS `es_order`;
CREATE TABLE `es_order`  (
  `id` int(0) NOT NULL COMMENT '订单编号',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '下单用户',
  `address_id` int(0) NULL DEFAULT NULL COMMENT '收货地址\n',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建订单时间',
  `pay_way` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '支付方式',
  `tracking_number` int(0) NULL DEFAULT NULL COMMENT '快递单号',
  `distribution_mode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配送方式',
  `status` int(0) NULL DEFAULT 1 COMMENT '订单状态\n1.已创建未支付\n2.已支付未发货\n3.已发货未收货\n4.已收货\n5.已关闭 只能关闭 已创建未支付的订单',
  `pay_date` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `es_order_user_id_fk`(`user_id`) USING BTREE,
  INDEX `es_order_address_id_fk`(`address_id`) USING BTREE,
  CONSTRAINT `es_order_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `es_address` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `es_order_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `es_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- 订单项表
DROP TABLE IF EXISTS `es_order_item`;
CREATE TABLE `es_order_item`  (
  `id` int(0) NOT NULL COMMENT '订单项编号',
  `order_id` int(0) NULL DEFAULT NULL COMMENT '所属订单',
  `book_id` int(0) NULL DEFAULT NULL COMMENT '包含书籍',
  `num` int(0) NULL DEFAULT NULL COMMENT '选购数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `es_order_tiem_order_id_pk`(`order_id`) USING BTREE,
  INDEX `es_order_tiem_book_id_pk`(`book_id`) USING BTREE,
  CONSTRAINT `es_order_tiem_book_id_pk` FOREIGN KEY (`book_id`) REFERENCES `es_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `es_order_tiem_order_id_pk` FOREIGN KEY (`order_id`) REFERENCES `es_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
```



### 综合题

小明是一位2023级高考生，现在小明已经得知其已经被杰普大学计算机系录取，为了提前学习到计算机相关的专业知识，他准备在杰普电子商城上购买相关书籍；

1）在进入到杰普商城后，小明发现自己还没有账号，请帮他创建一个账号吧

```sql
mysql> INSERT INTO es_user (username, password, phone, avatar, gender, status, birthday, register_time)
    -> VALUES ('xiaoming', 'password123', '13800010011', 'default.jpg', 0, 0, '2005-05-20', NOW());
Query OK, 1 row affected (0.01 sec)

```

2）创建好账号后，小明想要查看商城中都有哪些栏目，以及栏目下各书籍的信息，请帮其查找一下吧

``sql
mysql> SELECT c.name AS category_name, b.name AS book_name, b.author, b.price, b.publisher
    -> FROM es_category c
    -> JOIN es_book b ON c.id = b.category_id;
+---------------+------------------------------+---------------------+-------+-----------------------+
| category_name | book_name                    | author              | price | publisher             |
+---------------+------------------------------+---------------------+-------+-----------------------+
| Java          | mysql从入门到精通            | briup               | 28.90 | 机械工业出版社        |
| Java          | Spring                       | briup               | 28.90 | 机械工业出版社        |
| 人工智能      | Python                       | briup               | 28.90 | 机械工业出版社        |
| 小说          | 水浒传                       | 施耐庵              | 38.90 | 上海文艺出版社        |
| 诗歌          | 海子诗集                     | 海子                | 15.90 | 北京教育出版社        |
| 散文          | 朱自清散文集                 | 朱自清              | 20.90 | 上海文艺出版社        |
| 计算机        | C++ Primer                   | Stanley B. Lippman  | 49.90 | 机械工业出版社        |
| 计算机        | JavaScript高级程序设计       | Nicholas C. Zakas   | 59.90 | 机械工业出版社        |
| 人工智能      | 数据结构与算法               | Thomas H. Cormen    | 39.90 | 机械工业出版社        |
| 小说          | 红楼梦                       | 曹雪芹              | 42.90 | 上海文艺出版社        |
| 小说          | 西游记                       | 吴承恩              | 42.90 | 上海文艺出版社        |
| 小说          | 三国演义                     | 罗贯中              | 42.90 | 上海文艺出版社        |
| 人工智能      | 数据挖掘导论                 | Jiawei Han          | 49.90 | 机械工业出版社        |
| 计算机        | 计算机网络                   | Andrew S. Tanenbaum | 39.90 | 机械工业出版社        |
| 时政          | 论语                         | 孔子                | 19.90 | 北京教育出版社        |
| 时政          | 大学语文                     | 佚名                | 29.90 | 北京教育出版社        |
+---------------+------------------------------+---------------------+-------+-----------------------+
16 rows in set (0.01 sec)
```

3）小明发现商城里书籍实在是太多了，看的他眼花缭乱的，他现在想要购买的只有计算机相关的图书，那么如何才能将计算机相关的图书找出来呢？（找出计算机类及其子类的图书）

```sql
mysql> SELECT b.name, b.author, b.price, b.publisher
    -> FROM es_book b
    -> JOIN es_category c ON b.category_id = c.id
    -> WHERE c.name = '计算机' OR c.parent_id = (SELECT id FROM es_category WHERE name = '计算机');
+------------------------------+---------------------+-------+-----------------------+
| name                         | author              | price | publisher             |
+------------------------------+---------------------+-------+-----------------------+
| C++ Primer                   | Stanley B. Lippman  | 49.90 | 机械工业出版社        |
| JavaScript高级程序设计       | Nicholas C. Zakas   | 59.90 | 机械工业出版社        |
| 计算机网络                   | Andrew S. Tanenbaum | 39.90 | 机械工业出版社        |
| mysql从入门到精通            | briup               | 28.90 | 机械工业出版社        |
| Spring                       | briup               | 28.90 | 机械工业出版社        |
| Python                       | briup               | 28.90 | 机械工业出版社        |
| 数据结构与算法               | Thomas H. Cormen    | 39.90 | 机械工业出版社        |
| 数据挖掘导论                 | Jiawei Han          | 49.90 | 机械工业出版社        |
+------------------------------+---------------------+-------+-----------------------+
8 rows in set (0.01 sec)
```

4）经过一番查找后，小明终于找到了计算机相关的书籍，但是小明却发现商城管理员将《数据结构与算法》这本书归于了 人工智能这一类别里面，而不是在计算机类这个类别下。小明将这一情况告知了客服，请帮助其将书籍放到合适的类别下吧

```sql
UPDATE es_book
SET category_id = (SELECT id FROM es_category WHERE name = '计算机')
WHERE name = '数据结构与算法';
``` 


5）几经对比网上关于计算机必读书籍的推荐，小明初步确定了需要购买的书籍为 《计算机网络》、《数据结构与算法》、《操作系统》以及《计算机组成原理》；但是在购买时，发现商城中并没有《操作系统》以及《计算机组成原理》这两本书，于是他联系客服，希望能够上架这两本书。现在需要你帮助商城管理员将这两本书上架，库存各为100本

```sql
mysql> INSERT INTO es_book (name, cover, description, author, publisher, price, store_num, status, category_id)
    -> VALUES ('操作系统', NULL, '操作系统基础知识', '某作者', '某出版社', 49.90, 100, 0, (SELECT id FROM es_category WHERE name = '计算机')),
    ->     ('计算机组成原理', NULL, '计算机组成原理基础知识', '某作者', '某出版社', 59.90, 100, 0, (SELECT id FROM es_category WHERE name = '计算机'));
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0
```

6）在客服上架书籍后，小明立马将这几本书添加到了购物车中，请帮助小明将书籍添加到购物车吧

```sql
INSERT INTO es_shopcar (user_id, book_id, num)
VALUES (1, (SELECT id FROM es_book WHERE name = '计算机网络'), 1),
    (1, (SELECT id FROM es_book WHERE name = '数据结构与算法'), 1),
    (1, (SELECT id FROM es_book WHERE name = '操作系统'), 1),
    (1, (SELECT id FROM es_book WHERE name = '计算机组成原理'), 1);
```

7）在看到小明为大学专业学习做准备后，同样被计算机专业录用的小刚，希望好朋友小明 利用小明的账号 帮他买一下这些专业书籍；那么如何做到给小刚购买这些书籍呢？

```mysql
-- 小刚需要的书籍假设与小明相同
INSERT INTO es_shopcar (user_id, book_id, num)
VALUES (1, (SELECT id FROM es_book WHERE name = '计算机网络'), 1),
    (1, (SELECT id FROM es_book WHERE name = '数据结构与算法'), 1),
    (1, (SELECT id FROM es_book WHERE name = '操作系统'), 1),
    (1, (SELECT id FROM es_book WHERE name = '计算机组成原理'), 1);
```

8）确定好后，小明准备购买书籍，并且书籍寄往家里，请编写SQL语句帮助他完成购买操作吧，假定小明的用户id为1

- 添加小明的收获地址

```mysql
INSERT INTO es_address (receiver_name, urban_addr, detail_addr, phone, user_id)
VALUES ('小明', '北京市海淀区', '中关村大街123号', '13800010011', 1);
```

- 创建订单，将购物车中的图书生成一条订单记录：

```mysql
INSERT INTO es_order (user_id, address_id, create_date, pay_way, tracking_number, distribution_mode, status, pay_date)
VALUES (1, (SELECT id FROM es_address WHERE user_id = 1 AND receiver_name = '小明'), NOW(), '在线支付', NULL, '快递', 1, NULL);
```

- 获取刚创建的订单的订单编号：

```mysql
SELECT id INTO @order_id FROM es_order WHERE user_id = 1 ORDER BY create_date DESC LIMIT 1;
```

- 将购物车中的图书信息添加到订单项表中：

```mysql
INSERT INTO es_order_item (order_id, book_id, num)
SELECT @order_id, book_id, num FROM es_shopcar WHERE user_id = 1;
```

- 更新图书库存，将购买的图书数量从库存中减去：

```sql
UPDATE es_book b
JOIN es_shopcar s ON b.id = s.book_id
SET b.store_num = b.store_num - s.num
WHERE s.user_id = 1;
```

- 更新购物车，将购物车中的图书信息删除：

```sql
DELETE FROM es_shopcar WHERE user_id = 1;
```





# 数据定义

### 1、软件工程的流程是什么？



### 2、综合题

某公司需要开发一个客户关系管理系统，需要用到以下表：

- 客户表（crm_customer）：
  - id: 客户编号
  - name: 客户姓名
  - phone: 客户联系电话
  - address: 客户地址
- 销售机会表（crm_opportunity）：
  - id: 销售机会编号
  - customer_id: 客户编号，外键 关联到客户表的id
  - activity_id：市场活动编号，外键 关联到市场活动表的id
  - source: 销售机会来源
  - amount: 预计金额
  - close_date: 预计关闭日期
- 联系人表（crm_contact）：
  - id: 联系人编号
  - customer_id: 客户编号，外键 关联到客户表的id
  - name: 联系人姓名
  - title: 联系人职务
  - phone: 联系人电话
- 市场活动表（crm_activities）：
  - id: 市场活动编号
  - name: 活动名称
  - start_date: 活动开始日期
  - end_date: 活动结束日期



其中，一个客户可以有多个销售机会，一个销售机会属于一个客户。一个客户可以有多个联系人，一个联系人属于一个客户。一个市场活动可以有多个销售机会，一个销售机会属于一个市场活动。一个销售机会可以有多个联系人参与，一个联系人可以参与多个销售机会。



请根据以上条件，完成下列需求：

1）请画出其对应的实体-关系图（E-R），`禁止使用Navicat逆向模型`

 

2）请根据上述关系，创建对应的数据库与表

在进行数据库创建和建表操作之前，请先确定数据库的名称。假设我们将数据库命名为`crm`，以下是创建数据库和建表的SQL语句：

- 创建数据库：

```sql

```

- 建表操作：

```sql

```



### 3、综合题2

你好，我是一名刚毕业的大学生，现在入职到了一家IT企业做HR。可是我不懂电脑，你能帮我管理公司的人事档案数据吗？

需求1：公司要求，员工档案要包括以下这些信息：`编号`，`姓名`，`工资`，`生日`

需求2：怎么样？数据库表创建好了？那麻烦你帮我把下面这些数据保存起来吧？

| 姓名   | 工资    | 生日      |
| ------ | ------- | --------- |
| 马云   | 2025.33 | 1973-8-12 |
| 李彦宏 | 3209.49 | 1986-7-14 |
| 马化腾 | 1436.12 | 1964-8-10 |

需求3：呀！对不起，我忘记了，表格中还需要保存“**`手机号`**”！能修改一下表格吗？

需求4：呀！对不起，我又忘记了，公司还需要维护“部门”数据，同时记录每个员工是属于哪个部门的！

需求5：有一位同事辞职了，请帮我把他从系统中删除吧！他的员工编号是：5

需求6：有一位同事涨工资了，涨了200块钱，同时他手机号也改了，新的手机号是：13586705312。请帮我改一下吧，你真是个好人！这位同事的编号是17。

需求7：公司要打印报表，请帮我把全部信息都打印出来吧！

需求8：有同事要补办工牌，请帮我把他的全部信息都调取出来，他的编号是：63

需求9：Linda快过生日了，帮我查一下她生日的具体日期和手机号吧！

需求10：公司要调查薪酬情况，请帮我查询一下工资在2000到5000之间的员工信息，以及工资在3000以上的人数！

需求11：听说有些同事的工资正好是1000、3000或5000，帮我查查他们是谁吧？

需求12：公司开年会，要让名字里有字母o的同事表演节目，帮我查一下吧！

需求13：糟糕，有些同事的手机号是空的，帮我查询一下是哪些人吧！

需求14：市场部的主管想了解他们部门员工的工资，帮我查一下吧！哦，对了，要按顺序显示哦！市场部的部门名称是：Sales

需求15：上述查询返回的记录太多了，查看起来很不方便，怎么样能够实现分页查询呢？

**请使用所学的SQL语句完成以上需求：**

```mysql

```





# 事务控制

### 1、简答题

1）什么是数据库事务？简要描述事务的特性。



2）MySQL如何开启事务操作？



3）请解释数据库事务的提交和回滚操作，以及它们对数据库的影响。



4）什么是事务的隔离级别？列举MYSQL支持的事务隔离级别，并简要描述每个级别的特点。



5）请解释数据库的脏读、不可重复读和幻读问题，并说明这些问题如何通过事务隔离级别解决。





## 索引与视图

### 1、简答题

1）什么是数据库索引？它有什么作用？



2）解释什么是聚集索引和非聚集索引？它们有何区别？



3）什么是唯一索引？它与主键有何区别？



4）什么是复合索引？它在哪些情况下比单列索引更有用？



5）为什么在表的列上创建索引会提高查询性能？



6）列举创建索引的优点和缺点。



7）在何种情况下应该避免创建索引？



8）如何选择在哪些列上创建索引？有哪些因素需要考虑？



9）如何在MySQL中创建索引？列举常见的创建索引语句。



10）如何删除表的索引？列举删除索引的语句。



11） 什么是数据库视图？它的作用是什么？



12） 如何在MySQL中创建视图？列举创建视图的语句。



13） 视图是否占用存储空间？为什么？



14） 视图是否可以被索引？为什么？



15） 视图与表之间有何区别？它们在查询中的使用有何异同？

