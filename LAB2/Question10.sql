mysql> create database Mydbms6;
Query OK, 1 row affected (0.01 sec)

mysql> use Mydbms6;
Database changed

mysql> create table employees (
    -> employee_id int,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job_id varchar(20),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(employee_id,first_name,last_name,job_id,salary)
    -> values
    -> (1001,'Ram','Sharma','IT_DEP',30000),
    -> (1002,'Shyam','Sharma','HR_DEP',40000),
    -> (1003,'Hardik','Jaiswal','IT_DEP',50000),
    -> (1004,'Harkirat','Saluja','SAL_DEP',30000),
    -> (1005,'Darshan','Jain','HR_DEP',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select count(distinct job_id) as `Number of Jobs`
    -> from employees;
+----------------+
| Number of Jobs |
+----------------+
|              3 |
+----------------+
1 row in set (0.00 sec)

mysql>
