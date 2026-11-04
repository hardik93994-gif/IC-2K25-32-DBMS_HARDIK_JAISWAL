mysql> create database Mydbms7;
Query OK, 1 row affected (0.01 sec)

mysql> use Mydbms7;
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
    -> (1003,'Hardik','Jaiswal',100000),
    -> (1004,'Harkirat','Saluja',50000),
    -> (1005,'Darshan','Jain',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select upper(first_name) as `First Name`
    -> from employees;
+------------+
| First Name |
+------------+
| RAM        |
| SHYAM      |
| HARDIK     |
| HARKIRAT   |
| DARSHAN    |
+------------+
5 rows in set (0.00 sec)

mysql>
