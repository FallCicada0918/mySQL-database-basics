<!--
* @Description: 
 * @Author: FallCicada
 * @Date: 2024-10-23 19:05:36
 * @LastEditors: FallCicada
 * @LastEditTime: 2024-10-23 19:44:38
 * @: 無限進步
-->
# MySQL数据库-作业
## 姓名：张煜     学号2208300002
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
