mysql> create database Mydbms26;
Query OK, 1 row affected

mysql> use Mydbms26;
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

mysql> select max(salary) as 'Highest Salary',
    -> min(salary) as 'Lowest Salary',
    -> sum(salary) as 'Total Salary',
    -> avg(salary) as 'Average Salary'
    -> from employees;
+----------------+---------------+--------------+----------------+
| Highest Salary | Lowest Salary | Total Salary | Average Salary |
+----------------+---------------+--------------+----------------+
|       50000.00 |      30000.00 |    200000.00 |    40000.0000  |
+----------------+---------------+--------------+----------------+
1 row in set
