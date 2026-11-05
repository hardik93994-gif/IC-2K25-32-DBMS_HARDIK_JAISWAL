mysql> create database MydbmsX;
Query OK, 1 row affected

mysql> use MydbmsX;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name)
    -> values
    -> (1001,'Ram','Sharma'),
    -> (1002,'Shyam','Sharma'),
    -> (1003,'Hardik','Jaiswal'),
    -> (1004,'Harkirat','Saluja'),
    -> (1005,'Darshan','Jain'),
    -> (1006,'Rohan','Singh');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select last_name
    -> from employees
    -> where length(last_name) = 6;
+-----------+
| last_name |
+-----------+
| Sharma    |
| Sharma    |
| Saluja    |
+-----------+
3 rows in set
