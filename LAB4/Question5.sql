mysql> create database Mydbms25;
Query OK, 1 row affected

mysql> use Mydbms25;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> department_id int,
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,department_id,salary)
    -> values
    -> (1001,'Ram','Sharma',90,30000),
    -> (1002,'Shyam','Sharma',90,40000),
    -> (1003,'Hardik','Jaiswal',90,100000),
    -> (1004,'Harkirat','Saluja',50,50000),
    -> (1005,'Darshan','Jain',90,45000),
    -> (1006,'Rohan','Sharma',60,35000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select avg(salary) as 'Average Salary',
    -> count(*) as 'Number of Employees'
    -> from employees
    -> where department_id = 90;
+----------------+---------------------+
| Average Salary | Number of Employees |
+----------------+---------------------+
|    50000.000000|                   4 |
+----------------+---------------------+
1 row in set
