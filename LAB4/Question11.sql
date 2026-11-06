mysql> create database Mydbms31;
Query OK, 1 row affected

mysql> use Mydbms31;
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
    -> (1001,'Ram','Sharma','Programmer',30000),
    -> (1002,'Shyam','Sharma','Manager',40000),
    -> (1003,'Hardik','Jaiswal','Accountant',35000),
    -> (1004,'Harkirat','Saluja','Manager',50000),
    -> (1005,'Darshan','Jain','Accountant',45000),
    -> (1006,'Rohan','Sharma','Programmer',40000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select job_id, avg(salary) as 'Average Salary'
    -> from employees
    -> where job_id <> 'Programmer'
    -> group by job_id;
+------------+----------------+
| job_id     | Average Salary |
+------------+----------------+
| Manager    |    45000.0000  |
| Accountant |    40000.0000  |
+------------+----------------+
2 rows in set
