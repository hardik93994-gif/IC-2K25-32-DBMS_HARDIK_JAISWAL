mysql> create database Mydbms10;
Query OK, 1 row affected (0.01 sec)

mysql> use Mydbms10;
Database changed

mysql> create table employees (
    -> employee_id int,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(employee_id,first_name,last_name,salary)
    -> values
    -> (1001,'Ram','Sharma',30000),
    -> (1002,'Shyam','Sharma',40000),
    -> (1003,'Hardik','Jaiswal',1000000),
    -> (1004,'Harkirat','Saluja',50000),
    -> (1005,'Darshan','Jain',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select concat(first_name,' ',last_name) as `Employee Name`
    -> from employees;
+-----------------+
| Employee Name   |
+-----------------+
| Ram Sharma      |
| Shyam Sharma    |
| Hardik Jaiswal  |
| Harkirat Saluja |
| Darshan Jain    |
+-----------------+
5 rows in set (0.00 sec)

mysql>
