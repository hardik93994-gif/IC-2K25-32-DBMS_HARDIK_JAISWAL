mysql> create database Mydbms8;
Query OK, 1 row affected (0.01 sec)

mysql> use Mydbms8;
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
    -> (1001,'Ram','Sharma',30000),
    -> (1002,'Shyam','Sharma',40000),
    -> (1003,'Hardik','Jaiswal',100000),
    -> (1004,'Harkirat','Saluja',50000),
    -> (1005,'Darshan','Jain',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select substring(first_name,1,3) as `First 3 Characters`
    -> from employees;
+---------------------+
| First 3 Characters  |
+---------------------+
| Ram                 |
| Shy                 |
| Har                 |
| Har                 |
| Dar                 |
+---------------------+
5 rows in set (0.00 sec)

mysql>
