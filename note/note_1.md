<!--
 * @Description: 
 * @Author: FallCicada
 * @Date: 2024-10-23 08:52:44
 * @LastEditors: FallCicada
 * @LastEditTime: 2024-10-23 14:49:13
 * @: 無限進步
-->
# 2024年秋季 - mySQL基础课用笔记
## mySQL
### 数据库作用

1. 持久化
    
    把数据保存到可掉电式存储设备中以供之后使用
    
2. 实现数据共享
   
    数据共享包含所有用户可同时存取数据库中的数据，也包括用户可以用各种方式通过接口使用数据库，并提供数据共享。
3. 减少数据的冗余度
   
    同文件系统相比，由于数据库实现了数据共享，从而避免了用户各自建立应用文件。减少了大量重复数据，减少了数据冗余，维护了数据的一致性。
4. 数据的独立性

5. 数据实现集中控制

7. 故障恢复

    由数据库管理系统提供一套方法，可及时发现故障和修复故障，从而防止数据被破坏。数据库系统能尽快恢复数据库系统运行时出现的故障，可能是物理上或是逻辑上的错误。比如对系统的误操作造成的数据错误等。
    
  MySQL是一个开放源代码的关系型数据库管理系统
  
#### 关系型数据库
  
其以行和列的形式 存储数据 ，以便于用户理解，关系型数据库这一系列的行和列被称为表，一组表组成了 数据库 。

一个关系型数据库就是由 二维表及其之间的关系组成的一个数据组织 。
    
#### 优点 

易用性
    
    开发人员可以在几分钟内安装MySQL，并且数据库易于管理。
    
可靠性
    
可扩展性
    
高性能
    
高可用性
    
    MySQL提供了一套完整的本机、完全集成的复制 高可用性和灾难恢复技术。适用于业务关键型应用程序，并满足服务水平协议承诺，客户可以实现恢复点目标= 0（零数据丢失）恢复时间目标=秒（自动故障切换）
    
安全性
    
    数据安全需要保护并遵守行业和 政府法规，包括欧盟通用数据保护条例、支付卡行业数据安全标准、健康保险便携性和责任法案以及国防部 信息系统局的安全技术实施指南。MySQL Enterprise Edition提供 高级安全功能，包括身份验证/授权、透明数据加密、审计数据屏蔽和数据库防火墙
    
灵活性
  
#### 数据库的安装
    免安装版本
    环境变量
    安装命令确保要正确输入，不然就复制
    常用命令要记住
      net start mysql
    mysql服务是自启动的 
      服务 Mysql 停止
#### Mysql数据库使用
```SQL
    //登录数据库管理软件
    //  1. 直接登录
        % mysql -uroot -proot
    //  2. 保护密码
        % mysql -uroot -p 按回车键   
        Enter password: 
    //退出登录
      mysql> exit;
    //创建数据库 
    //  创建一个名为briup的数据库 
        create database briup;
    //  创建一个名为briup的数据库 指定编码格式为utf8
        create database briup charset=utf8;
        create database briup character set utf8;
    //查看已有的数据库
      show databases;
    //选择数据库 切换到briup数据库
      use briup;
    //查看数据库中的表格
      show tables;
    //创建表格 
      CREATE TABLE
    //删除表格
      DROP TABLE
```







SQL
  结构化查询语言(Structured Query Language)，专门用来与数据库通信的语言。
    DQL：数据查询语言(Data Query Language)
    DML：数据操作语言(Data Manipulation Language)
      用户通过它可以实现对数据的基本操作。代表关键字为insert、delete 、update。
    DDL：数据定义语言(Data Detinition Language)
    DCL：数据控制语言（Data Control Language）
    TCL：事务控制语言（Trasactional Control Language）