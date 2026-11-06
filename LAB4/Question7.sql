mysql> create database Mydbms27;
Query OK, 1 row affected

mysql> use Mydbms27;
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
    -> (1003,'Hardik','Jaiswal','Programmer'),
    -> (1004,'Harkirat','saluja','Manager'),
    -> (1005,'Darshan','Jain','Programmer'),
    -> (1006,'Rohan','Sharma','Accountant');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select job, count(*) as 'Number of Employees'
    -> from employees
    -> group by job;
+------------+---------------------+
| job        | Number of Employees |
+------------+---------------------+
| Programmer |                   3 |
| Manager    |                   2 |
| Accountant |                   1 |
+------------+---------------------+
3 rows in set
