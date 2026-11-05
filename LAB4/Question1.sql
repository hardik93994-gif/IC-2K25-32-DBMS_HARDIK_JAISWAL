mysql> create database Mydbms;
Query OK, 1 row affected

mysql> use Mydbms;
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
    -> (1003,'Hardik','Jaiswal','Accountant'),
    -> (1004,'Harkirat','Saluja','Programmer'),
    -> (1005,'Darshan','Jain','Manager'),
    -> (1006,'Rohan','Sharma','Salesman');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select count(distinct job) as 'Number of Jobs'
    -> from employees;
+----------------+
| Number of Jobs |
+----------------+
|              4 |
+----------------+
1 row in set
