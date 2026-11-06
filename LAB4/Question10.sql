mysql> create database Mydbms30;
Query OK, 1 row affected

mysql> use Mydbms30;
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
    -> (1001,'Ram','Sharma',10,30000),
    -> (1002,'Shyam','Sharma',20,40000),
    -> (1003,'Hardik','Jaiswal',30,50000),
    -> (1004,'Harkirat','Saluja',10,35000),
    -> (1005,'Darshan','Jain',20,45000),
    -> (1006,'Rohan','Sharma',30,25000);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select department_id, sum(salary) as 'Total Salary'
    -> from employees
    -> group by department_id;
+---------------+--------------+
| department_id | Total Salary |
+---------------+--------------+
|            10 |     65000.00 |
|            20 |     85000.00 |
|            30 |     75000.00 |
+---------------+--------------+
3 rows in set
