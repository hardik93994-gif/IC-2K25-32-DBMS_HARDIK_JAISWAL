mysql> create database MydbmsY;
Query OK, 1 row affected

mysql> use MydbmsY;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name)
    -> values
    -> (1001,'Ram','Mehta'),
    -> (1002,'Shyam','Saxena'),
    -> (1003,'Govind','Patel'),
    -> (1004,'Rampal','Sharma'),
    -> (1005,'Rishabh','Shetty'),
    -> (1006,'Rohan','Meena');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select last_name
    -> from employees
    -> where last_name like '__e%';
+-----------+
| last_name |
+-----------+
| Shetty    |
| Meena     |
+-----------+
2 rows in set
