mysql> create database Mydbms20;
Query OK, 1 row affected

mysql> use Mydbms20;
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
    -> (1002,'Shyam','Shyam',40000),
    -> (1003,'Hardik','Jaiswal',100000),
    -> (1004,'Harkirat','Saluja',50000),
    -> (1005,'Darshan','Jain',45000);
Query OK, 5 rows affected
Records: 5  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,salary,salary*15/100 as PF
    -> from employees;
+------------+-------------+----------+---------+
| first_name | last_name   | salary   | PF      |
+------------+-------------+----------+---------+
| Ram        | Sharma      | 30000.00 | 4500.00 |
| Shyam      | Sharma      | 40000.00 | 6000.00 |
| Hardik     | Jaiswal     |100000.00 |15000.00 |
| Harkirat   | Saluja      | 50000.00 | 7500.00 |
| Darshan    | Jain        | 45000.00 | 6750.00 |
+------------+-------------+----------+---------+
5 rows in set
