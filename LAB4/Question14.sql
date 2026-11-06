mysql> create database Mydbms34;
Query OK, 1 row affected

mysql> use Mydbms34;
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
    -> (1002,'Shyam','Sharma',10,40000),
    -> (1003,'Hardik','Jaiswal',10,50000),
    -> (1004,'Harkirat','Saluja',10,35000),
    -> (1005,'Darshan','Jain',10,45000),
    -> (1006,'Rohan','Sharma',10,25000),
    -> (1007,'Roshni','Verma',10,32000),
    -> (1008,'Aman','Gupta',10,38000),
    -> (1009,'Neha','Patel',10,42000),
    -> (1010,'Rohit','Joshi',10,36000),
    -> (1011,'Karan','Mehta',10,39000),
    -> (1012,'Ankit','Singh',20,28000),
    -> (1013,'Vikas','Jain',20,35000);
Query OK, 13 rows affected
Records: 13  Duplicates: 0  Warnings: 0

mysql> select department_id, avg(salary) as 'Average Salary'
    -> from employees
    -> group by department_id
    -> having count(*) > 10;
+---------------+----------------+
| department_id | Average Salary |
+---------------+----------------+
|            10 |    37416.6667  |
+---------------+----------------+
1 row in set
