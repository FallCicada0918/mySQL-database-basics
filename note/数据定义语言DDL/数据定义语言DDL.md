# 数据定义语言概述

## 一条数据的存储过程

在MySQL中，一个完整的数据存储过程总共有4步，分别：

数据存储过程

    创建库

        创建字段

            创建表

                插数据

DDL数据定义语句完成库和表的管理

## 数据库定义语句介绍

数据定义语言(Data Definitely Language)

DDL用于定义和管理数据库结构，包括**库**、**表**、索引、视图等数据库对象的常见、修改和删除。

DDL不涉及对数据的操作，二十关注数据库的结构和元数据(容器)。

**DDL关键字**

**`CREATE`**：用于创建数据库、表、索引、视图等。

**`ALTER`：**用于修改数据库对象的结构，如修改表结构、添加列，删除列等。

**`DROP`：**用于删除数据库对象，如删除表、删除索引等。

# SQL命名规定和规范

### 前置1:标识符命名规定

    
1.数据库名、表名不得超过30个字符，变量名限制为29个

    2.必须只能包含 A-Z,a-z,0-9，共63个字符，而且不能数字开头

    3.数据库名、表名、字段名等对象名中间不能包含空格

    4.同一个MVSQL软件中，数据库不能同名;同一个库中，表不能重名;同一个表中，字段不能重名[https://dev.mysgl.com/doc/refman/8.0/en/keywords.html](https://dev.mysgl.com/doc/refman/8.0/en/keywords.html必须保证你的字段没有和保留字、数据库系统或常用方法冲突。如果坚持使用，请在SQL语句中使用`(着重号)引起来)

    5..必须保证你的字段没有和保留字、数据库系统或常用方法冲突。如果坚持使用，请在SQL语句中使用`(着重号)引起来

#### 例：

    可以起的数据库名：

    1、mycompanydatabase

    2、sales_data

    3、Customer_Records_DB

    4、ecommerce_DB

    不能起的数据库名：

    5、my company database（空格）

    6、Sales&data（特殊符号）

    7、SELECT_db（SELECT为查询关键字）

    8、123_database（以数字开头）

    9、inventory database v1.0（空格）

## 规则

#### 前置1：标识符命名规则

![image.png](数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/image.png)





#### 前置2：标识符命名规范（基于阿里巴巴规范手册）

    阿里巴巴的SQL规范建议通常为了保证数据库操作的效率、安全和可维护性。

    1.注释应该清晰、简洁地解释 SOL语句的意图、功能和影响。

    2.库、表、列名应该使用小写字母，并使用下划线(_)或驼峰命名法

    3.库、表、字段名应该简洁明了，具有描述性，反映其所存储数据的含义。

    4.库名应于对应的程序名一致 例如:程序名为 EcommercePlatform 数据库名命名为ecommerce platform"

    5.表命名最好是遵循“业务名称_表”的作用 例如:alipay_task、force_project、trade_config

    6.列名应遵循“表实体 属性”的作用例如:product_name 或 productName



**例：**

![image.png](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/image%201.png)

# 数据定义语言·库管理





## 库管理：创建库

    创建库，我们必须指定库名，可能指定字符集或者排列方式

    方式1、创建数据库，使用默认字符集和排列方式

    ```SQL
     CREATE DATABASE 数据库名;
    ```

    方式2、判断并创建默认字符集库（推荐）

    ```SQL
    #如果无该名称数据库则创建
    CREATE DATABASE IF NOT EXISTS 数据库名; 
    ```

    方法3、创建指定字符集库或者排列方式

    ```SQL
    CREATE DATABASE 数据库名 CHARACTER SET 字符集;
    CREATE DATABASE 数据库名 COLLATE 排序规则;
    ```

    方法4、创建指定字符集和排序规则库

    ```SQL
    CREATE DATABASE 数据库名 CHARACTER SET 字符集 COLLATE 排序规则;
    ```

    **MySQL8默认值（不同版本可能会有不同）**

    字符集： `utf8mb4` 是一广泛支持各种语言字符的字符集。

    排序规则：`utf8mb4_0900_ai_ci` 是一种区分大小些的排序规则 

    ```SQL
    #查看默认字符集和排列方式命令
    SHOW VARIABLES LIKE'character_set_database';
    SHOW VARIABLES LIKE'collation_database';
    ```



![image.png](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/image%202.png)

字符集：编码格式

[MySQL练习1_数据库建立](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/MySQL练习1_数据库建立+92d1fd9d-3866-49c5-b2bd-ed525f8ea65e.md)

## 库管理：库查看和库管理

使用和查看库，包括展示和切换库等命令

方式1、产看当前所有库

```SQL
SHOW DATABASES;
```

方式2、查看当前使用库

```SQL
SELECT DATABASE();
```

方式3、查看当前指定库下的所有表

```SQL
SHOW TABLES FROM 数据库名; 
```

方式4、查看常见表的信息

```SQL
SHOW CREATE DATABASE 数据库名;
```

方式5、切换库/选中库

```SQL
USE 数据库名;
```

注意：要操作表格和数据之前必须先说明是对那个数据库进行操作，先use库

[MySQL练习2_数据库查看](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/MySQL练习2_数据库查看+1d543ec8-1291-49d3-bf48-60f5dc5f43b7.md)

## 表管理：修改库

方式1、修改库编码字符集

```SQL
ALTER DATABASE 数据库名 CHARACTER SET 字符集; #修改字符集gdk utf8
ALTER DATABASE 数据库名 COLLATE 排序方式; #修改排序方式
ALTER DATABASE 数据库名 CHARACTER 字符集 COLLATE 排序方式; #修改字符集和排序方式
```

注意：

`DATABASE`不能改名。一些可视化工具可以改名，它无非是建新库，把所有表复制到新库；再删旧库以完成更名操作

[MySQL练习3_数据库修改](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/MySQL练习3_数据库修改+07efb018-0ef2-470f-a450-55290e358603.md)

## 表管理：删除库

删除数据库前要三思，反复确认后再删除

方式1、直接删除库

```SQL
DROP DATABASE 数据库名;
```

方式2、判断并删除库（推荐）

```SQL
DROP DATABASE IF EXISTS 数据库名;
```

[MySQL练习4_删除库](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/MySQL练习4_删除库+6d92648f-1135-4ada-9f7e-1cc78ba1752d.md)

## 库管理实战练习

场景1:

假设你正在为一个多语言的博客平台设计数据库。你需要创建一个名为 blog_platform 的数据库，支持存储多语言的文章和评论。由于博客平台可能包含来自不同语言的用户，你决定使用 `utf8mb4`字符集，排序方式选择默认值，以支持广泛的 Unicode 字符。

场景2:

查看数据库字符集和排序规则

场景3:

假设在后续的发展中，你决定将排序方式修改为`utf8mb4_0900_as_cs`，以实现大小写敏感的比较。

场景4:

查看修改后数据库字符集和排序规则

场景5:

项目惨遭放弃，需要删除项目库，并且跑路

[MySQL练习5_综合练习](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/MySQL练习5_综合练习+75607906-2e17-446c-b143-90b0123db2b1.md)

# 数据定义语言·表管理

创建库**VS**创建表





![image.png](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/image%203.png)



创建库：相当于创建一个excel表格文件，我们只需要指定库名和字符集即可！





![image.png](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/image%204.png)



创建表：相当于创建一个表格内容页，我们不仅需要指定表名和字符集，还需要指定表中的列名和列类型，甚至会加入一些约束，例如：手机号码必须填写等。

例子：创建了一个名为 **post** 的博客文章表，包括一些常见的**数据类型、编码设置以及列注释！**

![image.png](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/image%205.png)

## 表管理 ：创建表

### 语法

![image.png](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/image%206.png)

    核心要素1、指定表名

    核心要素2、指定列名

    核心要素3、指定列类型

    可选要素4、指定列约束(后续补充)

    可选要素5、指定表配置

    可选要素6、指定表和列的注释

![image.png](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/image%208.png)

    关键点1、表名、列名、类型必须填写

    关键点2、推荐使用**`if not exists`**，直接创建存在报错 ( 严谨，优雅 ✌ )

    关键点3、**注释**不是必须的，但是是**很有必要的**

    关键点4、列之间使用**“`，`”**进行分隔

### 练习

### 场景1：

假设你正在设计一个简单的在线图书管理系统。需要创建一个名为book_libs 的数据库,你决定使用`utf8mb4` 字符集，排序方式选用大小写敏感的`utf8mb4_0900_as_cs`。

```SQL
# 2.DDL之数据表操作
/*
    2.1 建表语法
    建表语法总结
    
    create table [if not exists] 表名 (
      #列的信息
      列名 类型 [列的约束] [列的注释],
      列名 类型 [列的约束] [列的注释],
      列名 类型 [列的约束] [列的注释],
      列名 类型 [列的约束] [列的注释]
    )[描述][注释]
    
    
    建表注意事项
    1. 表名 列名 列类型必须填写
    2. 推荐使用if not exists
    3. 注释不是必须的，但是是很有必要的！
    4. 列之间使用“,”隔开，最后一列没有
*/
CREATE DATABASE　IF NOT EXISTS book_libs CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs;

USE book_libs;
```

### 场景2：

创建一个图书表`books`，判断不存在再创建，并且手动设置`books`表字符集为`utf8mb4`，添加表注释内容。同时图书表`books`中应该以下列:

图书名称book name列,类型为`varchar(20)`，添加注释。

图书价格book price列,类型为`double(4,1)`，添加注释。

图书数量book_num列,类型为`int`，添加注释。

按以上要求完成图书表的创建!

```SQL
CREATE TABLE IF NOT EXISTS books(
	#列的信息
	book_name VARCHAR(20) COMMENT '图书名',
	book_price DOUBLE(4,1) COMMENT '图书价格',
	book_num INT COMMENT '图书数量'
)CHARSET = utf8mb4 COMMENT '图书表';
```

查看结果

```SQL
SHOW TABLES FROM book_libs;
```

![image.png](./数据定义语言DDL+cb4bce0d-689e-42df-b76e-2cfc46dbc3a6/image%208.png)

## 表管理 · 数据类型(整数)

MySQL支持多种数据类型，包括**整数、浮点数、定点数、字符串、日期时间**等。
[https://dev.mysql.com/doc/refman/8.0/en/data-types.html](https://dev.mysql.com/doc/refman/8.0/en/data-types.html)

MySOL支持SOL标准整数类型`INTEGER`(或 `INT`)和 `SMALLNT`。作为标准的扩展，MySOL还支持整数类型`TINYINT`、`MEDIUMINT`和`RIGINT`。下表显示了每种整数类型所需的存储和范围。

|类型|存储(字节)|最小值有符号|最小值无符号|最大值有符号|最大值无符号|
|-|-|-|-|-|-|
|`TINYINT(MySQL)`|1|-128|0|127|255|
|`SMALLINT(SQL)`|2|-32768|0|32767|65535|
|`MEDIUMINT(MySQL)`|3|-8388608|0|8388607|16777215|
|`INT(SQL)`|4|-2147483648|0|2147483647|4294967295|
|`BIGINT(MySQL)`|8|$-2^{63}$|0|$2^{63}-1$|$2^{64}-1$|

**注意：**无符号 == 无负号，整数类型都可以添加**`unsigned`**修饰符，添加后对应数据变成无符号类型，值从0开始！！





**示例：**



```SQL
stu_age tinyint unsigned COMMENT '年龄字段，tinyint类型，无符号值从0开始'，
stu_age tinyint COMMENT '年龄字段，tinyint类型，有符号值从-128开始'，
# unsigned 必须紧贴类型后放置
```

### 练习

```SQL
/*
  2.3 建表类型(整数)
  整数类型(类型，占有空间，范围)
  
  标准sql
  int/integer  4字节 无符号 0 ~ 2 ^ (32) - 1 有符号  -2 ^ (31) ~ 2 ^ (31) - 1
  smallint     2字节 有符号 0 ~ 2 ^ (16) - 1 有符号  -2 ^ (15) ~ 2 ^ (15) - 1
  
  MySQL独有(方言)：
  tinyint      1字节 无符号 0 ~ 2 ^ (08) - 1 有符号  -2 ^ (07) ~ 2 ^ (07) - 1
  mediunint    3字节 无符号 0 ~ 2 ^ (24) - 1 有符号  -2 ^ (23) ~ 2 ^ (23) - 1
  bigint       8字节 无符号 0 ~ 2 ^ (64) - 1 有符号  -2 ^ (63) ~ 2 ^ (63) - 1
  
  有符号:列名|整数类型->有符号   |有符号 有正值和负值
  无符号:列名|整数类型->unsigned|无符号 没有负值，都是正值，将正值部分绝对值后，加入到正值部分
  
  注意:选合适范围，范围合适选占有空间小的
  
  创建一个ddl_d1库中，创建一个t1表，包含：年龄和学号(范围不确定但是没有负值)
  
*/
CREATE TABKLE t1(
 t1_age TINYINT UNSIGNED COMMENT '年龄，无符号，范围 0 ~ 255'，
 t1_number BIGINT UNSIGEND COMMENT '学号，范围选最大的，且没有负号'
)
```

## 表管理 · 数据类型(浮点数)

`FLOAT`和 `DOUBLE` 类型表示近似的数值数据值。MySQL使用4个字节表示单精度值，使用8个字节表示双精度值。下表显示了每种类型所需的存储和范围。

|类型|存储(字节)|M(小数 + 整数位数)|D(小数位)|
|-|-|-|-|
|`FLOAT(M,D)`|4|M最大为24|D最大为8|
|`DOUBLE(M,D)`|8|M最大为(53)|D最大为30|

**注意 :** 从 MySQL8.0.17 开始，不推荐使用非标准 `FLOAT(M,D)`语法 `DOUBLE(M,D)`，未来版本中可能删除对它的支持。支持`unsigned`修饰，添加修饰，只保留正值范围负值不会迁移到正值!





示例：



```SQL
stu_height flaot(4,1) unsigned COMMEND '身高，保留一位小数，多位会四舍五入'
```

## 表管理 · 数据类型(定点数)

**`DECIMAL`** 类型存储精确的数值数据值。当需要保持精确精度时，例如：货币数据，商品价格等！

|类型|存储(字节)|M(小数 + 整数位数)|D(小数位)|
|-|-|-|-|
|`DECIMAL(M,D)`|动态计算|M最大为65|D最大为30|

**注意: `**DECIMAL` 类型的存储空间是可变的，它的存储大小受 DECIMAL 数据类型定义时指定的精度和规模影响。如果D小数位数为 0，`DECIMAL` 则值不包含小数点或小数部分。





示例：



```SQL
emp_salary DECIMAL(8,1) COMMAENT '工资，保留一位小数，多位会四舍五入',
```

## 表管理 · 数据类型[浮点/定点] · 练习

练习

```SQL
/*
  2.4 建表类型[浮点/顶点]
  浮点类型[类型(M,D)]
    float(M,D)     4字节     m 24 d 08
    double(M,D)    8字节     m 53 d 30
  定点类型[类型(M,D)]
    decimal(M,D)   动态计算  m 65 d 30
  使用对比：
    精度要求不高，例如：身高，体重 使用：float/double
    精度要求交稿，例如：工资，价格 使用：decimal
*/
```

## 表管理·数据类型(字符串)

`CHAR`和`VARCHAR`类型都可以存储比较短的字符串

|字符串(文本)|特点|长度|长度范围(字符)|存储空间|
|-|-|-|-|-|
|`CHAE(M)`|固定长度|M|0≤M≤255|M*4个字节(`utf8mb4`)|
|`VARCHAR(M)`|可变长度|M|MySQL一行数据最多65535字节|(M*4+1)个字节(`utf8mb4`)|

**注意：**

`CHAR(M)` 类型一般需要预先定义字符串长度。如果不指定`(M)`，则表示长度默认是1个字符。

保存数据的实际长度比`CHAR`类型声明的长度小，则会在右侧填充空格以达到指定的长度。

当MySOL检索`CHAR`类型的数据时，`CHAR`类型的字段会去除尾部的空格。



`VARCHAR(M)`定义时，必须指定长度`(M)`，否则报错。

MySQL4.0版本往前，`varchar(20)`:指的是20字节，如果存放UTF8汉字时，只能存6个(每个汉字3字节);

MvSOL5.0版本往后，`varchar(20)`:指的是20字符。

检索`VARCHAR`类型的字段数据时,会保留数据尾部的空格。

通过显示将各种字符串值存储到 `CHAR(4)`and `VARCHAR(4)`列的结果(假设使用单字节字符集，如  latin1)说明 和 `VARCHAR` 之间的 `CHAR` 差异

|插入值|CHAR(4)|所需存储|VARCHAR(4)|所需存储|
|-|-|-|-|-|
|''|'  '|4 bytes|''|1 bytes|
|'ab'|'ab  '|4 bytes|'ab'|3 bytes|
|'abcd'|'abcd'|4 bytes|'abcd|5 bytes|

### 表管理·数据类型(讨论M)





#### 示例1、



```SQL
CREATE TABLE 表名(
  post name VARCHAR(16384) NOT NULL
)ENGINE = INNODB CHARSET = utf8mb4;


错误代码: 1074
Column length too big for column 'post name'(max = 16383); use BLOB or TEXT instead
```

**前提：**在MySQL的设定中，单行数据最大能存储65535字节数据(注意:是一行非额外存储所有列总和且单位是字节)

**原因：**

字符集为`utf8mb4`，每个字符占4个字节

字符串列需要1个额外字节空间记录是否为空

计算(65535-1)/4=16383.5向下取余16383，单列`utf8mb4`字符集类型最大字符限制16383





#### 示例2、



```SQL

CREATE TABLE 表名(
    post_name VARCHAR(16000) NOT NULL,
  post name2 VARCHAR(384) NOT NULL
)ENGINE=INNODB CHARSET=utf8mb4;

错误代码: 1118
Row size too large. The maximum row size for the used table type, not counting BLOBs, is 65535. Thisincludes storage overhead, check the manual. You have to change some columns to TEXT Or BLOBS
```

**解决：**在MySOL的设定中，单行数据最大能存储65535字节数据，但是TEXT和BLOB类型不计算，他们属于额外存储这种场景可以使用TEXT进行某列类型替换即可!

```SQL
/*
	 2.6 建表类型 [字符串]
	 字符串类型
		CHAR     固定长度    一旦声明，则固定站有固定空间    M最大为255 [性能较好]
		VARCHAR  可变长度类型 一旦声明，可以插入小于的长度，自动进行伸缩M占有的空间不能超过一行的最大显示65535字节 [性能较差]
        test     大文本类型，声明不要指定长度，有固定大小限制，test[65535]，不占有一行的闲置空间
     细节理解：
		1.char 声明的时候可以不写m char = char(1)
		2.char 声明了最大长度限制，输入的文本小于长度限制，会在右侧补全空格 char(5) -> 'abc' -> 'abc  '
		3.char在读取的时候，会自动去掉右侧的空格 'abc  ' ->  'abc'
		4.varchar 声明的时候，必须增加m限制varchar(m)
		5.mysql4.0以下版本 varchar(20) -> 20个字节限制 mb3 -> 6
		6.mysql4.0以下版本 varchar(20) -> 20个字符限制
		7.varchar类型中识别空格，插入空格 读取后也是有空格的
	 演示varchar最大限制
		前提：MySQL 中一行数据最大的占有空间是65535字节，除了TEXT or BLOBs 类型的列(不占有65535 [法外狂徒])
				一行 -> name1列 -> name1列占有最大空间65535字节
                vacher类型默认会使用1字节标识是否为null -> 65535 - 1 = 65534字节
                字符集utf8mb4 1个字符 = 4个字节    65534 / 4 = 16383
							
		 解决方案：
                 1、缩小字符限制 m变小 [不合理]
                 2、可以修改字符集 [不合理]
                 3、可以将字符串类型变成TEXT，不占有一行限制
		 
*/

			
```

### 表管理·数据类型(文本类型)

在MySQL中，TEXT用来保存文本类型的字符串，总共包含4种类型，分别是TINYTEXT、TEXT、MEDIUMTEXT和LONGTEXT类型。在向TEXT类型的字段保存和查询数据时，系统自动按照实际长度存储，不需要预先定义长度。这一点和 VARCHAR类型相同。

|文本字符串类型|特点|长度(字符)|存储范围|占用的存储空间|
|-|-|-|-|-|
|TINYTEXT|小文本,可变长度|L|0<= x<= 255|L + 2个字节|
|TEXT|文本,可变长度|L|0<= x<= 65535|L + 2个字节|
|MEDIUMTEXT|中等文本,可变长度|L|0<= x<= 16777325|L + 3个字节|
|LONGTEXT|大文本,可变长度|L|0<= x<= 4294967295|L + 4个字节(最大4GB)|

**示例:**

```SQL
CREATE TABLE 表名(
      tx TEXT
  );
```

**开发经验:**

短文本,  固定长度使用char              例如: 性别，手机号

短文本,  非固定长度使用varchar      例如: 姓名，地址

大文本,  建议存储到文本文件，使用varchar记录文件地址，不使用TEXT，直接存储大文本，他性能非常较差!

## 表管理·数据类型(时间类型)

用于表示时态值的日期和时间数据类型为DATE、TIME、DATETIME、TIMESTAMP 和 YEAR。每种类型都有一个有效值范围，换一种思路，可以理解时间类型就是`特殊格式的字符串、

|类型|名称|字节|日期格式|最小值|最大值|
|-|-|-|-|-|-|
|YEAR|年|1|YYYY或YY|1901|2155|
|TIME|时间|3|HH:MM:SS|-838:59:59|838:59:59|
|DATE|日期|3|YYYY-MM-DD|1000-01-10|9999-12-03|
|DATETIME|日期时间|8|YYYY-MM-DD  HH:MM:SS|1000-01-01      00:00:00|9999-12-31     23:59:59|
|TIMESTAMP|日期时间|4|YYYY-MM-DD  HH:MM:SS|1970-01-01      00:00:00|2038-01-19     03:14:07|

**注意:**year类型赋00-99值对应年限，[00-69]对应[2000-2069],[70-99]对应[1970-1999],建议四位年值默认情况下,    时间需要主动赋予默认值和修改值!

**扩展:DATETIME和TIMESTAMP类型自动初始化和更新**

```SQL
#方式1:插入默认当前时间和修改自动更新当前时间
tS TIMESTAMP DEFAULT CURRENT TIMESTAMP ON UPDATE CURRENT TIMESTAMP,
dt DATETIME DEFAULT CURRENT TIMESTAMP ON UPDATE CURRENT TIMESTAMP
#方式2: 插入默认当前时间
tS TIMESTAMP DEFAULT CURRENT TIMESTAMP，
dt DATETIME DEFAULT CURRENT TIMESTAMP
```

练习:

```SQL
/*
建表类型[时间类型]
时间类型：
  类型         字节     格式        插入时方法
  year          1    yyyy | yy     '09' | 09
  time          3    HH:MM:SS      '10:10:10'
  date          3    YY-MM-DD      '2000-10-10'
  datetime      8    YY-MM-DD HH:MM:SS
  timestamp     4    YY-MM-DD HH:MM:SS
注意情况：
   1.year类型有两位或者四位的表达形式，两位 00 ~ 69 = 2000 ~ 2096  70 ~ 99 = 1970 ~ 1999
   2.时间类型就是一个特殊类型的字符串，插入数据时''，时间类型需要自动赋值，需要手动添加相关设置
拓展自动填写时间:
   1.插入默认添加时间
             datetime | timestamp default current_timestamp
   2.修改默认更改时间
             datetime | timestamp default current_timestamp on update current_timestamp;
演示: 创建t2表
   注册日期：字段插入自动添加时间，更新数据不变(插入数据的时候，自动维护时间，后续修改数据，时间不变！)
   更新日期：字段插入自动添加时间，更新数据时间改变(插入数据需要自动维护时间，修改数据也需要维护时间)
*/
CREARTE TABLE t2(
  NAME VARCHAR(20),
  register_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '插入自动维护时间'，
  update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT ON UPDATE CURRENT_TIMESTAMP COMMENT'插入维护时间，修改时自动维护时间'

)
```

## 表管理·数据类型总结

整数类型(Integer Types)

INT:范围为-2147483648到2147483647。
TINYINT:范围为-128 到127。
SMALLINT:范围为-32768到32767。
BIGINT:范围为-9223372036854775808到9223372036854775807。

非整数类型(Floating-Point Types)

FLOAT:单精度浮点数。
DOUBLE:双精度浮点数。
DECIMAL:固定精度十进制数。

字符串类型(String Types)

VARCHAR:可变长度的字符串。
CHAR:周定长度的字符串。
TEXT:较大的文本数据(最大4G)。

日期和时间类型(Date and Time Types)

DATE:日期值。
TIME:时间值。
DATETIME:日期和时间值。
TIMESTAMP:日期和时间值，具有特殊的自动更新功能，
YEAR:年份值。

确定数据值范围，选择符合范围且存储空间占有最小类型

不确定数据值范围，选择选择范围较大类型,避免值超范围异常



