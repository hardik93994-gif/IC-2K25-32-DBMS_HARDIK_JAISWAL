mysql> create database Mydbms;
Query OK, 1 row affected

mysql> use Mydbms;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name)
    -> values
    -> (1001,'Abc'),
    -> (1002,'Bcd'),
    -> (1003,'Ajanta'),
    -> (1004,'Bobby'),
    -> (1005,'Cory'),
    -> (1006,'Boco');
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select first_name
    -> from employees
    -> where first_name like '%b%'
    -> and first_name like '%c%';
+------------+
| first_name |
+------------+
| Abc        |
| Bcd        |
| Boco       |
+------------+
3 rows in set
