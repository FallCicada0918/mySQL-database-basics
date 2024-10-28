# MySQL触发器作业



## 数据表内容见“t”和“t_course”



## 1.创建一个t_course表的更新触发器，当更新t_course表中某一条记录后，分别查看更新前后的课程名称。

```sql

```



## 2.按如下内容创建表，然后创建一个delete触发器，删除t_student表中的数据时，将对应的t_score表中的数据删除。

```sql
#t_student表的创建
create table t_student(
    id int auto_increment primary key,
    name varchar(20)
);

#创建t_score表
create table t_score(
    id int,
    name varchar(20)
);

#创建外键
alter table t_score add constraint fk_score_id foreign key(id) references t_student(id);

#插入数据
insert into t_student(id,name) values(1,'张三'),(2,'李四');
insert into t_score(id,name) values(1,'100'),(2,'200');
```

```sql

```

