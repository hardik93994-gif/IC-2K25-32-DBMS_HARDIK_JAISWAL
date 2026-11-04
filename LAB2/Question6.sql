mysql> create database Mydbms2;
Query OK, 1 row affected (0.01 sec)

mysql> use Mydbms2;
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
    -> (101,'Ram','Sharma',30000),
    -> (102,'Shyam','Sharma',40000),
    -> (103,'Hardik','Jaiswal',100000),
    -> (104,'Harkirat','Saluja',50000),
    -> (105,'Darshan','Jain',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select sum(salary) as `Total Salary`
    -> from employees;
+--------------+
| Total Salary |
+--------------+
|    265000.00 |
+--------------+
1 row in set (0.00 sec)

mysql>
