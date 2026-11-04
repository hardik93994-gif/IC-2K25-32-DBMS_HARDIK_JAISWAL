mysql> create database MydbmsX;
Query OK, 1 row affected (0.01 sec)

mysql> use MydbmsX;
Database changed

mysql> create table employees (first_name varchar(30),last_name varchar(30),department_id int);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(first_name,last_name,department_id)
    -> values('Ram','Sharma',1),('Shyam','Sharma',2),('Hardik','Jaiswal',3),('Harkirat','Saluja',3);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select distinct department_id from employees;
+---------------+
| department_id |
+---------------+
|            1  |
|            2  |
|            3  |
+---------------+
3 rows in set (0.00 sec)

mysql>
