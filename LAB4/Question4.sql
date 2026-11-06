mysql> create database Mydbms24;
Query OK, 1 row affected

mysql> use Mydbms24;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,job,salary)
    -> values
    -> (1001,'Ram','Sharma','Programmer',30000),
    -> (1002,'Shyam','Sharma','Manager',45000),
    -> (1003,'Hardik','Jaiswal','Programmer',100000),
    -> (1004,'Harkirat','Saluja','Programmer',50000),
    -> (1005,'Darshan','Jain','Accountant',35000),
    -> (1006,'Rohan','Sharma','Programmer',45000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select max(salary) as 'Maximum Salary'
    -> from employees
    -> where job = 'Programmer';
+----------------+
| Maximum Salary |
+----------------+
|      100000.00 |
+----------------+
1 row in set
