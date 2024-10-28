# MySQL视图、索引作业



## 按如下要求创建数据库：

`学生表：Student (Sno, Sname, Ssex , Sage, Sdept)`
`学号，姓名，性别，年龄，所在系 Sno为主键`

`课程表：Course (Cno, Cname,)
课程号，课程名 Cno为主键`

`学生选课表：SC (Sno, Cno, Score)
学号，课程号，成绩 Sno,Cno为主键`

```sql
#创建数据库：
CREATE DATABASE Stu;
#使用数据库
USE Stu;
```



## 1.用SQL语句创建学生表student，定义主键，姓名不能重名，性别只能输入男或女，所在系的默认值是 “大数据”。

```sql

```



## 2.修改student 表中年龄（age）字段属性，数据类型由int 改变为smallint。

```sql

```



## 3.为SC表建立按学号（sno）和课程号（cno）组合的升序的主键索引，索引名为SC_INDEX 。

```sql

```



## 4.创建一视图 stu_info,查询全体学生的姓名，性别，课程名，成绩。

```sql

```

