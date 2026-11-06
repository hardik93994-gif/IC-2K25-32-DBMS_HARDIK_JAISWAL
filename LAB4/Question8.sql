mysql> create database Mydbms28;
Query OK, 1 row affected

mysql> use Mydbms28;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,salary)
    -> values
    -> (1001,'Ram','Sharma',30000),
    -> (1002,'Shyam','Sharma',40000),
    -> (1003,'Hardik','Jaiswal',50000),
    -> (1004,'Harkirat','Saluja',35000),
    -> (1005,'Darshan','Jain',45000);
Query OK, 5 rows affected
Records: 5  Duplicates: 0  Warnings: 0

mysql> select max(salary) - min(salary) as 'Salary Difference'
    -> from employees;
+------------------+
| Salary Difference |
+------------------+
|         20000.00 |
+------------------+
1 row in set
