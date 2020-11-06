/*
    关系型数据库：sqilt     db2     mysql       or
    非关系型数据库：mongodb  redis
*/

--- 查看当前用户 ---
select user();

--- 退出mysql ---
quit;
exit;

--- 创建账号 ---
--- 指定某一个IP
create user 'bruce'@'ip地址'；
--- 指定网段 ---
create user 'bruce'@'ip地址最后一位可以是%'；
--- 所有IP（机器）都能访问 ---
create user 'bruce'@'%'；

--- 远程登录指令 ---
mysql -u root -p 123456 -h ip地址；

---查看某一个账号的权限 ---
show grants for 'bruce'@'ip地址'；

--- 给账号授权 ---
grant all on *.* to 'bruce'@'%';
--- 刷新权限 ---
flush privilleges;

---创建一个账号并授权 ---
grant all on *.* to 'bruce'@'%' identified by '123456'



/*
    SQL 结构查询语言，分成三种类型
    1.DDL 数据库定义语音：数据库，表，试图，索引，存储过程，比如：create drop alter
    2.DML 数据库操纵语言：插入数据 insert   删除 delete   更新 update   查询 select
    3.DCL 数据库控制语言：比如控制用户的访问权限 grant revoke
*/

--- 创建一个数据库 ---
create database 'db1' charset utf8;
--- 查询数据库 ---
show databases;
--- 修改数据库 ---
alter database 'db1' charset gbk;
--- 删除数据库 ---
drop database 'db1'

--- 操作表 ---
use db1;
--- 创建表 ---
create table 't1'(id int,name char);
--- 查询表 ---
show tables;
--- 修改表 ---
alter table 't1' modify 'name' char(3)
--- 删除表 ---
drop table 't1'