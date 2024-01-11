Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database sampledb;
Query OK, 1 row affected (0.88 sec)

mysql> use sampledb;
Database changed
mysql> create taable employees(id int primary key,name varchar(10),address varchar(30),salary decimal(10,2));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'taable employees(id int primary key,name varchar(10),address varchar(30),salary ' at line 1
mysql> create table employees(id int primary key,name varchar(10),address varchar(30),salary decimal(10,2));
Query OK, 0 rows affected (1.57 sec)

mysql> insert into employees values(1,"abc","pune",76);
Query OK, 1 row affected (0.20 sec)

mysql> insert into employees values(2,"raj","mumbai",80);
Query OK, 1 row affected (0.06 sec)

mysql> insert into employees values(3,"akash","banglore",90);
Query OK, 1 row affected (0.06 sec)

mysql> select * from employees;
+----+-------+----------+--------+
| id | name  | address  | salary |
+----+-------+----------+--------+
|  1 | abc   | pune     |  76.00 |
|  2 | raj   | mumbai   |  80.00 |
|  3 | akash | banglore |  90.00 |
+----+-------+----------+--------+
3 rows in set (0.00 sec)

mysql> select * from employess where id=2;
ERROR 1146 (42S02): Table 'sampledb.employess' doesn't exist
mysql> select * from employess where id=2;
ERROR 1146 (42S02): Table 'sampledb.employess' doesn't exist
mysql> select * from employees where id=2;
+----+------+---------+--------+
| id | name | address | salary |
+----+------+---------+--------+
|  2 | raj  | mumbai  |  80.00 |
+----+------+---------+--------+
1 row in set (0.06 sec)

mysql> select * from employees where salary>70;
+----+-------+----------+--------+
| id | name  | address  | salary |
+----+-------+----------+--------+
|  1 | abc   | pune     |  76.00 |
|  2 | raj   | mumbai   |  80.00 |
|  3 | akash | banglore |  90.00 |
+----+-------+----------+--------+
3 rows in set (0.07 sec)

mysql> select * from employees where salary>80;
+----+-------+----------+--------+
| id | name  | address  | salary |
+----+-------+----------+--------+
|  3 | akash | banglore |  90.00 |
+----+-------+----------+--------+
1 row in set (0.00 sec)

mysql> select count(*) from employees;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.13 sec)

mysql> select sum(salary) from employees;
+-------------+
| sum(salary) |
+-------------+
|      246.00 |
+-------------+
1 row in set (0.00 sec)

mysql> select avg(salary) from employees;
+-------------+
| avg(salary) |
+-------------+
|   82.000000 |
+-------------+
1 row in set (0.00 sec)