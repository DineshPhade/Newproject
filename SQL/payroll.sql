Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

//UC 1

mysql> create database payrollservice;
Query OK, 1 row affected (0.17 sec)

mysql> use payrollservice;
Database changed

//UC 2

mysql> create table emppayroll(id int primary key,name varchar(22), salary decimal(10,2));
Query OK, 0 rows affected (0.27 sec)

//UC 3
mysql> insert into emppayroll values(1,"akash",200000);
Query OK, 1 row affected (0.15 sec)

mysql> insert into emppayroll values(2,"vijay",600000);
Query OK, 1 row affected (0.07 sec)

mysql> insert into emppayroll values(3,"Rajesh",100000);
Query OK, 1 row affected (4.20 sec)

mysql> insert into emppayroll values(4,"ajay",900000);
Query OK, 1 row affected (0.18 sec)

mysql> insert into emppayroll values(6,"vinay",600000);
Query OK, 1 row affected (0.11 sec)


//UC 4
mysql> select * from emppayroll;
+----+--------+-----------+
| id | name   | salary    |
+----+--------+-----------+
|  1 | akash  | 200000.00 |
|  2 | vijay  | 600000.00 |
|  3 | Rajesh | 100000.00 |
|  4 | ajay   | 900000.00 |
|  6 | vinay  | 600000.00 |
+----+--------+-----------+
5 rows in set (0.10 sec)


//UC 5

mysql> select salary from emppayroll where name="akash";
+-----------+
| salary    |
+-----------+
| 200000.00 |
+-----------+
1 row in set (0.15 sec)

mysql> alter table emppayroll add column start_date date;
Query OK, 0 rows affected (1.46 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | NULL       |
|  2 | vijay  | 600000.00 | NULL       |
|  3 | Rajesh | 100000.00 | NULL       |
|  4 | ajay   | 900000.00 | NULL       |
|  6 | vinay  | 600000.00 | NULL       |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> insert into emppayroll values(1,"akash",200000,22/03/2005);
ERROR 1292 (22007): Incorrect date value: '0.003657522859351620' for column 'start_date' at row 1
mysql> insert into emppayroll values(1,"akash",200000,22/03/2005);
ERROR 1292 (22007): Incorrect date value: '0.003657522859351620' for column 'start_date' at row 1
mysql> insert into emppayroll values(1,"akash",200000,22-03-2005);
ERROR 1292 (22007): Incorrect date value: '-1986' for column 'start_date' at row 1
mysql> insert into emppayroll values(1,"akash",200000,22-03-2005);
ERROR 1292 (22007): Incorrect date value: '-1986' for column 'start_date' at row 1
mysql> insert into emppayroll values(1,"akash",200000,1990-05-15);
ERROR 1292 (22007): Incorrect date value: '1970' for column 'start_date' at row 1
mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | NULL       |
|  2 | vijay  | 600000.00 | NULL       |
|  3 | Rajesh | 100000.00 | NULL       |
|  4 | ajay   | 900000.00 | NULL       |
|  6 | vinay  | 600000.00 | NULL       |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> update emppayroll set date='2005-05-22' where id=1;
ERROR 1054 (42S22): Unknown column 'date' in 'field list'
mysql> alter table emppayroll drop column start_date;
Query OK, 0 rows affected (0.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+
| id | name   | salary    |
+----+--------+-----------+
|  1 | akash  | 200000.00 |
|  2 | vijay  | 600000.00 |
|  3 | Rajesh | 100000.00 |
|  4 | ajay   | 900000.00 |
|  6 | vinay  | 600000.00 |
+----+--------+-----------+
5 rows in set (0.00 sec)

mysql> alter table emppayroll add column start_date;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> alter table emppayroll add column start_date date;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | NULL       |
|  2 | vijay  | 600000.00 | NULL       |
|  3 | Rajesh | 100000.00 | NULL       |
|  4 | ajay   | 900000.00 | NULL       |
|  6 | vinay  | 600000.00 | NULL       |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> insert into emppayroll values(1,"akash",200000,'2005-05-15');
ERROR 1062 (23000): Duplicate entry '1' for key 'emppayroll.PRIMARY'
mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | NULL       |
|  2 | vijay  | 600000.00 | NULL       |
|  3 | Rajesh | 100000.00 | NULL       |
|  4 | ajay   | 900000.00 | NULL       |
|  6 | vinay  | 600000.00 | NULL       |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> update emppayroll set date='2005-05-22' where id=1;
ERROR 1054 (42S22): Unknown column 'date' in 'field list'
mysql> update emppayroll set start_date='2005-05-22' where id=1;
Query OK, 1 row affected (0.15 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | 2005-05-22 |
|  2 | vijay  | 600000.00 | NULL       |
|  3 | Rajesh | 100000.00 | NULL       |
|  4 | ajay   | 900000.00 | NULL       |
|  6 | vinay  | 600000.00 | NULL       |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> update emppayroll set date='2005-05-23' where id=2;
ERROR 1054 (42S22): Unknown column 'date' in 'field list'
mysql> update emppayroll set start_date='2005-06-23' where id=2;
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emppayroll set start_date='2005-06-24' where id=3;
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | 2005-05-22 |
|  2 | vijay  | 600000.00 | 2005-06-23 |
|  3 | Rajesh | 100000.00 | 2005-06-24 |
|  4 | ajay   | 900000.00 | NULL       |
|  6 | vinay  | 600000.00 | NULL       |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> update emppayroll set start_date='2024-11-23' where id=4;
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | 2005-05-22 |
|  2 | vijay  | 600000.00 | 2005-06-23 |
|  3 | Rajesh | 100000.00 | 2005-06-24 |
|  4 | ajay   | 900000.00 | 2024-11-23 |
|  6 | vinay  | 600000.00 | NULL       |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> update emppayroll set start_date='2021-01-07' where id=5;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | 2005-05-22 |
|  2 | vijay  | 600000.00 | 2005-06-23 |
|  3 | Rajesh | 100000.00 | 2005-06-24 |
|  4 | ajay   | 900000.00 | 2024-11-23 |
|  6 | vinay  | 600000.00 | NULL       |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> update emppayroll set start_date='2021-11-23' where id=5;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | 2005-05-22 |
|  2 | vijay  | 600000.00 | 2005-06-23 |
|  3 | Rajesh | 100000.00 | 2005-06-24 |
|  4 | ajay   | 900000.00 | 2024-11-23 |
|  6 | vinay  | 600000.00 | NULL       |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> update emppayroll set start_date='2024-01-07' where id=6;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | 2005-05-22 |
|  2 | vijay  | 600000.00 | 2005-06-23 |
|  3 | Rajesh | 100000.00 | 2005-06-24 |
|  4 | ajay   | 900000.00 | 2024-11-23 |
|  6 | vinay  | 600000.00 | 2024-01-07 |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

mysql> update emppayroll set id=5 where name=vinay;
ERROR 1054 (42S22): Unknown column 'vinay' in 'where clause'
mysql> update emppayroll set id=5 where name="vinay";
Query OK, 1 row affected (0.12 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+
| id | name   | salary    | start_date |
+----+--------+-----------+------------+
|  1 | akash  | 200000.00 | 2005-05-22 |
|  2 | vijay  | 600000.00 | 2005-06-23 |
|  3 | Rajesh | 100000.00 | 2005-06-24 |
|  4 | ajay   | 900000.00 | 2024-11-23 |
|  5 | vinay  | 600000.00 | 2024-01-07 |
+----+--------+-----------+------------+
5 rows in set (0.00 sec)

//UC7

mysql> select min(salary) from emppayroll;
+-------------+
| min(salary) |
+-------------+
|   100000.00 |
+-------------+
1 row in set (0.07 sec)

mysql> select max(salary) from emppayroll;
+-------------+
| max(salary) |
+-------------+
|   900000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> select avf(salary) from emppayroll;
ERROR 1305 (42000): FUNCTION payrollservice.avf does not exist
mysql> select avg(salary) from emppayroll;
+---------------+
| avg(salary)   |
+---------------+
| 480000.000000 |
+---------------+
1 row in set (0.00 sec)

mysql> select sum(salary) from emppayroll;
+-------------+
| sum(salary) |
+-------------+
|  2400000.00 |
+-------------+
1 row in set (0.00 sec)

//uc6
mysql> alter table emppayroll add column gender varchar(5);
Query OK, 0 rows affected (0.33 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+--------+
| id | name   | salary    | start_date | gender |
+----+--------+-----------+------------+--------+
|  1 | akash  | 200000.00 | 2005-05-22 | NULL   |
|  2 | vijay  | 600000.00 | 2005-06-23 | NULL   |
|  3 | Rajesh | 100000.00 | 2005-06-24 | NULL   |
|  4 | ajay   | 900000.00 | 2024-11-23 | NULL   |
|  5 | vinay  | 600000.00 | 2024-01-07 | NULL   |
+----+--------+-----------+------------+--------+
5 rows in set (0.00 sec)

mysql> update emppayroll set gender="m" where id=1;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emppayroll set gender="m" where id=2;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emppayroll set gender="m" where id=3;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emppayroll set gender="m" where id=4;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emppayroll set gender="m" where id=5;
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emppayroll;
+----+--------+-----------+------------+--------+
| id | name   | salary    | start_date | gender |
+----+--------+-----------+------------+--------+
|  1 | akash  | 200000.00 | 2005-05-22 | m      |
|  2 | vijay  | 600000.00 | 2005-06-23 | m      |
|  3 | Rajesh | 100000.00 | 2005-06-24 | m      |
|  4 | ajay   | 900000.00 | 2024-11-23 | m      |
|  5 | vinay  | 600000.00 | 2024-01-07 | m      |
+----+--------+-----------+------------+--------+
5 rows in set (0.00 sec)

mysql>