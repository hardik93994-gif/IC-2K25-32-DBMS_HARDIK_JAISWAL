mysql> create database Mydbms33;
Query OK, 1 row affected

mysql> use Mydbms33;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> job_id varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,job_id,salary)
    -> values
    -> (1001,'Ram','Sharma','Programmer',3000),
    -> (1002,'Shyam','Sharma','Manager',5000),
    -> (1003,'Hardik','Jaiswal','Accountant',3500),
    -> (1004,'Harkirat','Saluja','Manager',6000),
    -> (1005,'Darshan','Jain','Accountant',4500),
    -> (1006,'Rohan','Sharma','Programmer',4000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select job_id, max(salary) as 'Maximum Salary'
    -> from employees
    -> group by job_id
    -> having max(salary) >= 4000;
+------------+----------------+
| job_id     | Maximum Salary |
+------------+----------------+
| Manager    |        6000.00 |
| Accountant |        4500.00 |
| Programmer |        4000.00 |
+------------+----------------+
3 rows in set
