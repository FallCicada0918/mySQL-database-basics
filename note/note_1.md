<!--
 * @Description: 
 * @Author: FallCicada
 * @Date: 2024-10-23 08:52:44
 * @LastEditors: FallCicada
 * @LastEditTime: 2024-10-31 08:48:06
 * @: 無限進步
 * @root_userName: root
 * @root_password: 9572
 * @normal_user: fallcicada
 * @password: 9572
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

6. 故障恢复
    由数据库管理系统提供一套方法，可及时发现故障和修复故障，从而防止数据被破坏。数据库系统能尽快恢复数据库系统运行时出现的故障，可能是物理上或是逻辑上的错误。比如对系统的误操作造成的数据错误等。

#### MySQL是一个开放源代码的关系型数据库管理系统
##### 关系型数据库
其以行和列的形式 存储数据 ，以便于用户理解，关系型数据库这一系列的行和列被称为表，一组表组成了 数据库 。
一个关系型数据库就是由 二维表及其之间的关系组成的一个数据组织 。
######  优点 
###### 易用性
开发人员可以在几分钟内安装MySQL，并且数据库易于管理。

可靠性

可扩展性

高性能

高可用性
 
   MySQL提供了一套完整的本机、完全集成的复制 高可用性和灾难恢复技术。适用于业务关键型应用程序，并满足服务水平协议承诺，客户可以实现恢复点目标= 0（零数据丢失）恢复时间目标=秒（自动故障切换）

###### 安全性
      
数据安全需要保护并遵守行业和 政府法规，包括欧盟通用数据保护条例、支付卡行业数据安全标准、健康保险便携性和责任法案以及国防部 信息系统局的安全技术实施指南。MySQL Enterprise Edition提供 高级安全功能，包括身份验证/授权、透明数据加密、审计数据屏蔽和数据库防火墙
###### 灵活性
```
  数据库的安装
    免安装版本
    环境变量
    安装命令确保要正确输入，不然就复制
    常用命令要记住
      net start MySQL
    MySQL服务是自启动的 
      服务 MySQL 停止
  MySQL数据库使用
    登录数据库管理软件
      1. 直接登录
        % MySQL -uroot -proot
      2. 保护密码
        % MySQL -uroot -p 按回车键   
        Enter password: 
    退出登录
      MySQL> exit;
```
###  创建数据库 
```SQL
-- 创建一个名为briup的数据库 
create database briup;

-- 创建一个名为briup的数据库 指定编码格式为utf8
        create database briup charset=utf8;
        create database briup character set utf8;
-- 查看已有的数据库
      show databases;
-- 选择数据库 切换到briup数据库
      use briup;
-- 查看数据库中的表格
      show tables;
-- 创建表格 
      CREATE TABLE
-- 查看表的结构
      desc 表名;
      show columns from s_dept;
-- 查看表的内容
-- 查看表中的所有内容
        select * from s_dept;
-- 查看指定字段的内容
        select id,name from s_dept;
-- 给字段起别名【可选】 as 起别名时 as 可以不写
        select id,name as student from s_dept;
-- 给字段临时计算+起别名 计算时注意数据类型是否可以计算
        select last_name,salary*12 as yearS from s_emp;
-- 去除重复的行 如果有多个字段，会进行联合去重 多列值都要相同才会去重 distinct关键字只能放到select后面
        select distinct name, id from s_dept;
-- 查看所有员工的职位名称和部门id，同职位同部门只显示一次
        select distinct title,dept_id from s_emp;
-- 查看所有员工的id、名字、提成 如果提成为空那么显示0
        select id,last_name,IFNULL(commission_pct,0) as c_pct from s_emp;
-- 起别名时 as 可以不写
        select id,last_name,IFNULL(commission_pct,0) c_pct from s_emp;
-- 拼接固定列'briup'
        select 'briup',id,last_name from s_emp;
-- 常数计算
        select 5*5;
```
### 条件查询 使用where子句开筛选满足条件的数据

比较运算符 = > < >= <= !=

逻辑运算符 and or not 

注意：and优先级 高于or

特殊操作符 between and 

not between and 

in() 查询的值在列表中

like 模糊查询

not like

not

is not 
```SQL
      查询31号部门的所有信息
        select * from s_dept where id = 31;
      查询工资小于1000的员工的id和名字
        select id,last_name,salary from s_emp where salary < 1000;
      查询id在10-20之间的用户基本信息
        select id,last_name,salary from s_emp where id>=10 and id<=20;
      查询工资大于1500，或者在35号部门的用户基本信息
        select id,last_name,salary,dept_id from s_emp where salary>1500 or dept_id=35;
      查看员工部门为41或者44，且工资大于1000的员工基本信息
        select id,last_name,salary,dept_id from s_emp where salary>1000 and (dept_id=41 or dept_id=44);
      查看员工部门为41且工资大于1000,或者部门为44的员工，的基本信息
        select id,last_name,salary,dept_id from s_emp where (salary>1000 and dept_id=41) or dept_id=44;
       select id,last_name,salary,dept_id from s_emp where salary>1000 and dept_id=41 or dept_id=44;
      查看员工工资在700-1500之间的基本信息
        select id,last_name,salary from s_emp where salary between 700 and 1500;
      查看员工id为1,3,5,7,9的基本信息
        select id,last_name,salary from s_emp where id in(1,3,5,7,9);
      查看员工名字以C开头的员工信息 %是模糊匹配 0-多个字符
        select id,last_name 
        from s_emp 
        where last_name like 'C%';
      查看员工名字以C开头的员工信息，名字是5个字的 _一个下划线匹配一个字符
        select id,last_name 
        from s_emp 
        where last_name like 'C____';
      查看员工名字长度不小于5，且第四个字母为n的员工信息 
        select id,last_name 
        from s_emp 
        where last_name like '___n_%';
      查看员工名字中包含一个_的员工信息 
        select id,last_name 
        from s_emp 
        where last_name like '%\_%';
      查看员工提成为null的员工信息 
        select id,last_name 
        from s_emp 
        where commission_pct is null;
      查看员工提成不为null的员工信息 
        select id,last_name 
        from s_emp 
        where commission_pct is not null;
      查看员工工资不在800-1000范围的员工信息
        select id,last_name,salary
        from s_emp 
        where salary not between 800 and 1000;
    排序 order by 默认升序 asc  降序 desc
      查看员工工资不在800-1000范围的员工信息，并且按照工资排序（升序）
        select id,last_name,salary
        from s_emp 
        where salary not between 800 and 1000
        order by salary;
      查看员工工资不在800-1000范围的员工信息，并且按照姓名降序工资升序排序
        select id,last_name,salary
        from s_emp 
        where salary not between 800 and 1000
        order by last_name desc,salary asc;
    分页 limit 起始数据的索引，查询的条数
      每页的条数size 
      第几页   n
      1: 0,size = 5
      2: (n-1)*size,size = 5  5,5
      3: 10,5
```
### 开始的索引()

#### 查询员工表数据，每页5条数据，查询第1页
`select id,last_name,salary`
        
`from s_emp `
        
`limit 0,5;`
#### 查询员工表数据，每页5条数据，查询第2页
        
`select id,last_name,salary`
        
`from s_emp `
        
`limit 5,5;`
#### 多表查询

表联合查询，即一条sql语句要涉及到多张表，表中的数据通过特定的连接进行联合显示
#### 笛卡尔积
      
注意多表查询时要避免笛卡尔积的产生，使用连接查询查询可以避免

#### 连接查询
分类
1. 等值连接
2. 不等值连接
3. 外连接
4. 自连接

1. 等值连接
    
    等值连接又称为内连接、自然连接，将两张具有关联关系的列的表连接起来 为了表述清楚 可以给表名起别名
    
    eg:查询员工的名字，部门编号，部门名字
```SQL
select last_name,dept_id,sd.id,name
from s_emp se,s_dept sd
where se.dept_id = sd.id;
```
2. 不等值连接
两张没有关联关系的表 通过某个特定场景关联起来 就是不等值连接
    
新建一张等级表
```SQL
          create table salgrade(
            id int primary key auto_increment,
            name varchar(25),
            minsal float,
            maxsal float
          );
    
          插入数据
          insert into salgrade (name, minsal, maxsal) values('初级工程师',0,1000);
          insert into salgrade (name, minsal, maxsal) values('中级工程师',1001,2000);
          insert into salgrade (name, minsal, maxsal) values('高级工程师',2001,3000);
        查询员工的名字，职位，工资以及工资等级。
          select e.last_name,e.title,e.salary,s.name
          from s_emp e, salgrade s
          where e.salary between s.minsal and s.maxsal;
```
3. 自连接
查询每个员工的名字以及员工对应管理者的名字
```SQL
select e1.last_name,e2.last_name
from s_emp e1, s_emp e2
where e1.manager_id = e2.id;
```
4. 外连接
插入两条数据
```
        insert into s_emp(id,last_name) values(27,'tom');
        insert into s_dept(id,name) values(60,'st');
        查询员工对应的部门名字
          左外连接 保留所有匹配的数据记录和左边表中不匹配的数据
          select last_name,dept_id,sd.id,name
          from s_emp se left outer join s_dept sd
          on se.dept_id = sd.id;

          select last_name,dept_id,sd.id,name
          from s_emp se left join s_dept sd
          on se.dept_id = sd.id;

          右外连接 outer可选
          select last_name,dept_id,sd.id,name
          from s_emp se right outer join s_dept sd
          on se.dept_id = sd.id;
          
          select last_name,dept_id,sd.id,name
          from s_emp se right join s_dept sd
          on se.dept_id = sd.id;
```
5. 内连接
* 查询多表交集部分的数据
  * 通过语法分类
    * 隐式
    * 显示
    * 隐式
    ```SQL 
          select *
          from table1,table2
          where 条件;
          查询员工姓名以及部门名字
          select *
          from s_emp se,s_dept sd
          where se.dept_id = sd.id;
    ```
    * 显示
    ```SQL 
          select *
          from table1 [inner] join table2
          where 条件;
          select *
          from s_emp se inner join s_dept sd
          where se.dept_id = sd.id;

          select *
          from s_emp se join s_dept sd
          where se.dept_id = sd.id;
    ```
<font color=red>注意：表格起别名之后，不能再用原名指定字段。</font>

* 删除表格
    ```SQL
      DROP TABLE
    ```
* 给表格添加数据
    ```SQL
      INSERT INTO
      INSERT INTO 表名 (`id`, `name`, `phone`) VALUES (201, 'Unisprts', '55-2066101', );
    ```
* 查看用户
    ```SQL
      select user from MySQL.user;
    ```
* 查看当前登录的用户
    ```SQL
      select user();
      root@localhost
    ```
* 创建用户
    ```SQL
      create user 用户名 @ 主机名 IDENTIFIED by 密码;
      create user 'briup'@'%' IDENTIFIED by 'briup';
    
      %代表默认的主机名
    ```
* 删除用户
    ```SQL
      DROP USER 'briup1'@'%';
      DROP USER briup1;
    ```
* 查看当前用户的权限
    ```SQL
      show grants;
    ```
* 授予权限 授予数据库所有权限给briup1用户
    ```SQL
    注意：授权命令要保证用户有足够的权限才能执行，这里使用briup用户
    grant all on *.* TO 'briup1'@'%';
    ```
    * 撤销授权
    ```SQL 
      revoke all PRIVILEGES ON *.* from'briup1'@'%';
    ```

### MySQL卸载
  
***密码忘记直接卸载MySQL***
  
  1. 查看mysql是否启动成功
   
  2. 查看 服务 命令
   
    可以启动  net start mysql
    
    可以停止  net stop mysql
    
    可以重启  net stop mysql  net start mysql
    
  执行sql文件，完成删除表格、创建表格、插入数据
  
  sql文件的生成
  
    1. 仅结构 不包含数据
   
    2. 结构+数据
   
### 函数

* 分类：单行函数和聚合函数
    * 单行函数
```SQL
    单行函数接受参数返回一个结果，只对一行进行变换，每行返回一个结果，可以嵌套，参数可以是一列或一个值。
    select lower('Hello');
    select upper('Hello');
    select concat ('hello','world');
    select trim('   hello world  ');
    // 注意记忆这里的3不是索引 而是第三个的位置
    // llo world
    select substr('hello world',3);
    // 获取日期
    select curdate();
    获取时间
    select curtime();
    当前系统日期时间
    select now();
    获取当前系统的时间戳 1729838844
    时间戳是从1970年1月1日到当前时间的总秒数
    select unix_timestamp();
    2024-10-25 14:45:42
    2024年10月25日 14:45:42
    2024年10月25日 14时45分42秒
    10月25日2024年 14时45分42秒
    d 25 05
    e 25 5
    select date_format(now(),'%y-%M-%e');
    select date_format(now(),'%H:%i:%S');
```
#### 流程控制
```SQL
      IFNULL(salary,0)
      IF 
        如果员工的工资是大于1500，那就是蓝领，否则白领
        select * IF(salary>1500,'蓝领','白领')
        from s_emp;
        如果员工的工资是大于2500，显示金领，1500-2500那就是蓝领，否则白领
    select * 
    case when salary > 2500 then '金领'
        when salary<=2500 and salary>=1500 then '蓝'
        else '白' end
    from s_emp;
```
#### 聚合函数

一般会操作多组数据，对每组的某个列执行计算并返回单一的值，通常会与group by语句一起使用，所以也成为分组函数

  * 基础聚合函数

    * avg 求平均值
      
    * count 计数 
      
    * max 
      
    * min
      
    * sum
```SQL
    查看每个部门员工的人数和工资总和
      select dept_id ,count(*),sum(salary)
      from s_emp
      group by dept_id;
```
### 子查询

* 标量子查询
    * 子查询返回的结果是单个值(数字、字符串、日期等)，最简单的形式，这种子查询称为标量子查询
* 列子查询
    * 返回的结果是一列
* 行子查询
    * 返回的结果是一行
* 表子查询
    * 返回的结果是多行多列，可以作为临时表，进行进一步子查询
    
    注意 
    1. where子句后面不能加分组函数（聚合函数）
    2. select语句执行顺序
   
      from 
      where 聚合函数执行晚于where
      group by
      聚合函数的计算
      having 进行条件筛选 这里可以使用聚合计算的结果
      select
      order by
      limit
      
    3. where 和 having 的区别
      
      1. 都是做条件筛选的
      2. where 比 having 执行早
      3. where后面不能有组函数
      4. having后面可以
      5. where要紧跟from
      6. having紧跟group by
    
    4. having和group by的关系
      
      group by可以单独存在，having不可以
    5. order by 、limit 一般在最后面
### DML 数据操作语言
* 主要包括 INSERT UPDATE DELETE
  * 先创建一张表
    ```SQL
      create table emp(
        id int,
        name varchar(20)
        salary double
      )
    ```
`INSERT`
插入数据

`UPDATE`

更新数据
`DELETE`

删除数据

### DDL：数据定义语言(Data Definition Language)
```SQL
    create 
      创建一张没有约束的表
        create table 表名(
        create table emp(
          字段名 数据类型
          id int,
          name varchar(20),
          salary double
        );
```
##### 创建表的完整形态

关键字 create table 

        表名   emp
        字段名（列名） id、name等
        数据类型 int
        约束 非空 唯一 
      数据类型 
        数值 
          int float double decimal
        文本 
          普通字符串
            char 定长的 指定存储字节数后，无论实际存了多少，都按指定的来，默认是1字节，存储效率高char char(10)
            varchar 不定长 效率偏低 节省空间 占用的空间根据实际大小决定，必须要指定储存空间大小 varchar(10)
          文本 text 
          二进制数据 BLOB 
        日期
          year 
          time
          date 
          datetime now() 日期时间
      约束
      为了保证数据的完整性（精确性，可靠性） 
        实体完整性
          比如同一张表不能存在两条完全相同无法区分的记录
        域完整性 性别：男女 星期 一 日
        引用完整性 
          员工能基于员工表找到部门表中对应的信息
        用户自定义完整性
          比如：员工名字不能为空，头像不能为空，员工的工资不能高于经理的
      常用的约束
        not null 非空约束
          设置的列不能为空，必须有值
        primary key 主键约束
          用来唯一标识一行记录 一般是id 
          一张表中最多只能有一个主键约束
          主键不可以为空，也不可以重复
          创建主键约束的时候，系统会自动建立主键索引
        foreign key 外键约束
          外键约束 用来维护表与表之间的关系
          比如 员工表的dept_id 外键关联 部门表的 id 
          外键关联必须引用另外一张表的主键或者唯一约束列
          创建外键约束时，如果不给约束起名字，会自动产生一个外键名
          外键可以有多个，主键最多一个
          删除表或者数据时，要先删除外键表，再删除主键表
          外键类型和主键类型必须一致
        check 
          检查某个字段是否满足要求
          5.7 不报错 也不支持
          8.0+ 正常使用 不符合条件的话会有警告提醒
        unique 
          唯一约束
        default 
          gender char default 'f'
      约束的位置
        表级约束
          -- 表级约束
          primary key(id),
          unique(email),
          check(gender in ('f','m')),
          -- not null 非空约束不能声明成表级约束
          外键关联  
          -- create table s_order (
          -- 	id int primary key,
          -- 	goods varchar(30) not null,
          -- 	customer_id int ,
          -- -- 订单表的顾客id 关联 顾客表的id
          -- 	foreign key(customer_id) 
          -- 	references customer(id)
          -- );
        列级约束
          -- 主键约束
            id int primary key,
          -- 	非空约束
            name VARCHAR(100) not null,
          -- 	唯一性约束
            email VARCHAR(100) unique,
          -- 	check约束 
            gender char(1) check(gender IN('f','m')),
      特殊的建表方法 as 关键字 
      级联动作 外键 
        用来设置当主表记录删除或者更新时，从表相关字段的处理方式
        restrict （默认）
          当主表记录删除时，如果从表中有相关联的记录，
          那么不允许主表删除
          当主表记录更改主键字段值时，如果从表中有相关联的记录，
          那么不允许主表更改
        cascade 数据级联更新 
          当主表修改时 从表会级联更新
          当删除数据时 从表会级联删除
        set null
          当主表修改时 从表会级联变为null
          当删除数据时 从表会级联变为null
        no action
          拒绝操作

        foreign key(customer_id) 
        references customer(id) 
        on update set null
        on delete cascade
    alter
      更新、修改表 
      添加字段 
      修改字段的类型或者默认值
      列重命名 修改字段名 
      删除字段

    drop 

##### 文件服务器
  类似的4GB的大的文本内容 或者图片 或者视频，我们一般会再搭建一台文件服务器去存储
日期格式的处理 存时间戳 varchar

##### Linux系统

系统的root用户拥有当前主机、系统的最高权限

##### MySQL用户权限
root 用户 拥有MySQL的最高权限，所以root用户一般只允许本地登录
##### 安全性
各个平台的密码不要重复

### SQL

* 结构化查询语言(Structured Query Language)，专门用来与数据库通信的语言。
  * DQL：数据查询语言(Data Query Language)
      
    `select * from tableName where 条件`;
      
    完成数据查询的功能
      
* DML：数据操作语言(Data Manipulation Language)
    * 用户通过它可以实现对数据的基本操作。代表关键字为insert 、 delete 、update。
* DDL：数据定义语言(Data Detinition Language)
    * `创建表 create drop alter` 
      
      DML修改数据库表中的数据
      
      DDL修改数据库表的结构
* DCL：数据控制语言（Data Control Language）
      * 授予或者回收访问数据库的某种权限，控制数据库操纵事务发生的时间及效果
        
        `grant revoke`
* TCL：事务控制语言（Trasactional Control Language）
    * 经常被用于快速原型开发、脚本编程、GUI和测试等方面 commit rollback
* 注释
    ```SQL
    -- 单行注释
    /* 
      多行注释
    */
    # 不是sql语言的通用注释符号 但是#是作为MySQL的单行注释符号
    ```
软件安装
  1. 命令输错了
  2. 环境变量写错了
  3. 3306端口被占用
  4. 卸载不干净
  5. 中文路径影响
   
注意

  1. mysql是一个软件 ，需要时刻保持运行状态才能连接，牢记mysql密码
  2. mysql服务是自启动的，会占用系统资源
  3. 自启动有可能失败 
    手动启动
      方式1（管理员权限）：net start mysql
      方式2 ：服务 MySQL 点启动
  4. VMware 也是默认自启动 软件中设置项找
  5. sql用英文的标点符号
  6. 单词不要写错
  7. sql语句分号结束
  8. 为什么 order 不能做表名
    order是sql的保留关键字 order by 
    有可能引发混淆、错误 所以一般不建议使用
    如果非要使用，那么可以用反引号 将关键字扩起来，避免语法解析错误
    比如：create table `order` (

2024年10月25日 作业讲解
```SQL
查询所有学生的总成绩，如果某门成绩为 NULL，则将其视为 0
select name,IFNULL(math_score,0),physics_score,chemistry_score
from student_scores;
查询数学成绩大于等于90分的学生姓名和数学成绩
select name,math_score
from student_scores
where math_score>=90;
查询物理成绩为空或化学成绩小于80分的学生姓名和对应科目的成绩
select name,physics_score,chemistry_score
from student_scores
where physics_score IS NULL or chemistry_score<80;
查询平均成绩大于等于85分的学生姓名和平均成绩，如果某门成绩为 NULL，则将其视为 0
select name, (IFNULL(math_score,0)+IFNULL(physics_score,0)+IFNULL(chemistry_score,0))/3 as avg_score
from student_scores
where (IFNULL(math_score,0)+IFNULL(physics_score,0)+IFNULL(chemistry_score,0))/3 >= 85 ;
查询总分最高的学生信息
select name, (IFNULL(math_score,0)+IFNULL(physics_score,0)+IFNULL(chemistry_score,0)) as total_score
from student_scores
order by total_score desc;
查询所有图书分类及其父分类名称
select c1.name as categoryName,IFNULL(c2.name,'无') as PcategoryName
from es_category c1
LEFT JOIN es_category c2 ON c1.parent_id = c2.id;
查询图书分类为 "小说" 的图书名称、价格和出版社
select b.name,b.price,b.publisher
from es_book b
JOIN es_category c ON b.category_id = c.id
where c.name = '小说';
查询下单客户ID为 4 的收货地址和购物车中的图书名称。
select a.user_id, a.urban_addr,a.detail_addr,b.name
from es_address a 
left join es_shopcar sc on a.user_id = sc.user_id
left join es_book b on sc.book_id = b.id
where a.user_id = 4;
查询每个用户的用户名和购物车中购买的图书名称，如果没有购物车记录，则显示图书名称为 NULL
select u.username,b.name
from es_user u
left join es_shopcar sc on u.id = sc.user_id
left join es_book b on sc.book_id = b.id;
查询购物车中购买图书数量大于等于2本的用户及其购买的图书名称和购买数量
select u.username,b.name,sc.num
from es_user u
left join es_shopcar sc on u.id = sc.user_id
left join es_book b on sc.book_id = b.id
where sc.num >=2;
查询购物车中购买图书价格大于等于50的用户及其购买的图书名称和图书价格
select u.username,b.name,b.price
from es_user u
left join es_shopcar sc on u.id = sc.user_id
left join es_book b on sc.book_id = b.id
where b.price >=50;
查询购物车中有图书的用户的用户姓名、收货人姓名、城市地址和详细地址
select distinct a.receiver_name,a.urban_addr,a.detail_addr
from es_address a
right join es_shopcar sc on a.user_id =sc.user_id;
请列出购买了价格大于50的图书的用户的收货人姓名、城市地址和电话号码。
select distinct a.receiver_name,a.urban_addr,a.phone
from es_address a
inner join es_shopcar sc on a.user_id =sc.user_id
inner join es_book b on sc.book_id =b.id
where b.price > 50;
查询购买了属于“诗歌”类别的图书的用户的收货人姓名和电话号码
select distinct a.receiver_name,a.phone
from es_address a
join es_shopcar sc on a.user_id =sc.user_id
join es_book b on sc.book_id =b.id
join es_category c on b.category_id =c.id
where c.name = '诗歌';
```
```SQL
-- select dept_id ,count(*),sum(salary)
-- from s_emp
-- group by dept_id;
-- 查询每个部门的平均工资 
-- select dept_id ,avg(salary)
-- from s_emp
-- group by dept_id;
-- 查询每个部门的最高工资 
-- select dept_id ,max(salary)
-- from s_emp
-- group by dept_id;
-- 统计每个部门中，每个职位的人数有多少
-- （相同部门、相同职位的人数统计）
-- select dept_id,title,COUNT(*)
-- from s_emp
-- group by dept_id,title
-- order by dept_id;
-- 统计部门平均工资>=1400
-- select dept_id ,avg(salary)
-- from s_emp
-- group by dept_id
-- select dept_id ,avg(salary)
-- from s_emp
-- group by dept_id
-- having avg(salary) >= 1400;
-- 查看部门总工资>4000
-- select dept_id ,sum(salary)
-- from s_emp
-- group by dept_id
-- having sum(salary) >= 4000;
-- 查询s_emp表中，
-- 部门的平均工资大于等于1400的
-- 部门，并且显示出这些部门的名字，
-- 同时按照部门编号进行排序
-- select se.dept_id ,avg(se.salary),sd.name
-- from s_emp se,s_dept sd
-- where se.dept_id = sd.id
-- group by dept_id
-- having avg(salary) >= 1400
-- ORDER BY dept_id;
-- 查询工资比Smith工资高的员工信息
-- 查询Smith工资
-- select salary 
-- from s_emp 
-- where last_name = 'Smith';
-- 查询工资比940高的员工信息
-- select last_name,salary 
-- from s_emp 
-- where salary > (
-- 	select salary 
-- 	from s_emp 
-- 	where last_name = 'Smith'
-- );
-- 查询"Administration"部门和
-- "Finance"部门的所有员工信息
-- 查询部门id
-- select id 
-- from s_dept
-- where name = 'Administration'
-- or name = 'Finance';
-- 根据id查询员工信息
-- select last_name,dept_id
-- FROM s_emp
-- WHERE dept_id in (
-- 	select id 
-- 	from s_dept
-- 	where name = 'Administration'
-- 	or name = 'Finance'
-- );
-- 查询与"Ngao"的入职日期和部门
-- 都相同的员工信息
-- select start_date,dept_id
-- FROM s_emp
-- WHERE last_name = 'Ngao';
-- select last_name,start_date,dept_id
-- FROM s_emp
-- -- WHERE start_date = '1990-03-08'
-- -- AND dept_id = 41;
-- -- WHERE (start_date,dept_id) = ('1990-03-08',41);
-- WHERE (start_date,dept_id) = (
-- 	select start_date,dept_id
-- 	FROM s_emp
-- 	WHERE last_name = 'Ngao'
-- );
-- 查询平均工资比41号部门的平均工资高
-- 的部门中员工的信息，并显示
-- 其所在部门的平均工资。
-- 1. 查询41的平均工资
-- select AVG(salary)
-- FROM s_emp
-- WHERE dept_id = 41;
-- 2.查询平均工资比41号部门的平均工资高的部门id
-- SELECT dept_id
-- FROM s_emp
-- GROUP BY dept_id
-- HAVING AVG(salary) > 1247.5;
-- 10,31,32,33,35,50
-- 查以上部门的员工信息 
-- select se.last_name,se.dept_id
-- FROM s_emp se
-- WHERE se.dept_id IN (10,31,32,33,35,50)
-- 显示部门的平均工资表
-- select dept_id AVG(salary) avgs
-- FROM s_emp
-- GROUP BY dept_id;
-- 查询平均工资比41号部门的平均工资高
-- 的部门中员工的信息，并显示
-- 其所在部门的平均工资。
SELECT se.last_name,se.dept_id,sa.avgs
FROM s_emp se, (
	select dept_id,AVG(salary) avgs
	FROM s_emp
	GROUP BY dept_id
) sa
where se.dept_id IN (
	SELECT dept_id
	FROM s_emp
	GROUP BY dept_id
	HAVING AVG(salary) > (
		select AVG(salary)
		FROM s_emp
		WHERE dept_id = 41
	)
)
AND sa.dept_id = se.dept_id;
```