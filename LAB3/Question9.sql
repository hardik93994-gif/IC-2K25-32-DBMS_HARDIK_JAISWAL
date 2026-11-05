mysql> create database Mydbms19;
Query OK, 1 row affected

mysql> use Mydbms19;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,job)
    -> values
    -> (1001,'Ram','Sharma','Programmer'),
    -> (1002,'Shyam','Sharma','Manager'),
    -> (1003,'Harkirat','Saluja','Accountant'),
    -> (1004,'Hardik','Jaiswal','Programmer'),
    -> (1005,'Darshan','Jain','Manager'),
    -> (1006,'Rohan','Sharma','Salesman');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select distinct job
    -> from employees;
+------------+
| job        |
+------------+
| Programmer |
| Manager    |
| Accountant |
| Salesman   |
+------------+
4 rows in set
