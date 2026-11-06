mysql> create database Mydbms32;
Query OK, 1 row affected

mysql> use Mydbms32;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> department_id int,
    -> job_id varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees
    -> (employee_id,first_name,last_name,department_id,job_id,salary)
    -> values
    -> (1001,'Ram','Sharma',90,'Manager',30000),
    -> (1002,'Shyam','Sharma',90,'Programmer',40000),
    -> (1003,'Hardik','Jaiswal',90,'Manager',35000),
    -> (1004,'Harkirat','Saluja',60,'Accountant',50000),
    -> (1005,'Darshan','Jain',90,'Programmer',45000),
    -> (1006,'Rohan','Sharma',90,'Accountant',25000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select job_id,
    -> sum(salary) as 'Total Salary',
    -> max(salary) as 'Maximum Salary',
    -> min(salary) as 'Minimum Salary',
    -> avg(salary) as 'Average Salary'
    -> from employees
    -> where department_id = 90
    -> group by job_id;
+------------+--------------+----------------+---------------+----------------+
| job_id     | Total Salary | Maximum Salary | Minimum Salary | Average Salary |
+------------+--------------+----------------+---------------+----------------+
| Manager    |     65000.00 |       35000.00 |      30000.00 |    32500.0000  |
| Programmer |     85000.00 |       45000.00 |      40000.00 |    42500.0000  |
| Accountant |     25000.00 |       25000.00 |      25000.00 |    25000.0000  |
+------------+--------------+----------------+---------------+----------------+
3 rows in set
