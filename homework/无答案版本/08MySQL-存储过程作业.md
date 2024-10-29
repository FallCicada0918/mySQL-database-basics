9# MySQL存储过程作业



## 1.创建存储过程的命令是（）。（多选）

A. create proc
B. create function
C. create procedure
D. create view



## 2.修改用户自定义存储过程的命令是（）。

A. alter table
B. alter proc
C. alter function
D. alter view



## 3.删除存储过程的命令是（）。

A. drop view
B. drop function
C. drop databese
D. drop procedure



## 4.为使程序员编程时既可使用数据库语言又可使用常规的程序设计语言，数据库系统需要把数据库语言嵌入到（）中。

A. 编译程序
B. 操作系统
C. 中间语言
D. 宿主语言



## 5.SQL语言具有两种使用方式，分别称为交互式SQL和（）。

A. 提示式SQL
B. 多用户SQL
C. 嵌入式SQL
D. 解释式SQL



## 6.数据库应用系统通常会提供开发接口，若处于安全考虑，对于只读数据，通常提供（）供外部程序访问。

A. 基本表
B. 视图
C. 索引
D. 触发器



## 7.数据库应用系统通常会提供开发接口，对于需要更新的数据，则以（）的方式供外部调用，并由提供者完成对系统中表的更新。

A. 基本表
B. 存储过程
C. 视图
D. 触发器



## 8.参数化存储过程有助于保护程序不受SQL注入式攻击。（）

A. 正确
B. 错误



## 9.在存储过程中不可以调用存储过程。 （）

A. 正确
B. 错误



## 10.用户自定义存储过程是指由用户创建的，能完成某一特定功能的可重用代码的模块或例程。（）

A. 正确
B. 错误



## 11.存储过程独立于应用程序源代码，而且可以单独修改，可以提高应用程序的可维护性。 （）

A. 正确
B. 错误



## 12.存储过程必须有参数。 （）

A. 正确
B. 错误



## 13.存储过程的输出参数可以在任意位置定义，可以写在输入参数的前面（）。

A. 正确
B. 错误



## 14.存储过程的输出参数有且只能有一个。 （）

A. 正确
B. 错误



## 15.按如下内容创建表，然后创建一个带输入参数的存储过程，输入t_course表中某个老师的姓名，输出该老师讲授的课程course_id与course_name。

```sql
#创建教师表
create table t(
    id int auto_increment primary key,
    name varchar(20)
);

#创建t_course表
create table t_course(
    id int,
    name varchar(20),
    course_id int,
    course_name varchar(20)
);

#添加外键
alter table t_course add constraint fk_tid foreign key(id) references t_t(id);

#插入教师的信息
insert t_t(name) values('张三'),('李四');

#插入教师的授课信息
insert t_course values(1,'张三',101,'CoreJava'),
(1,'张三',102,'Python'),
(2,'李四',103,'Hadoop'),
(2,'李四',104,'MySQL');
```

```sql

```

