mysql> create database Mydbms16;
Query OK, 1 row affected

mysql> use Mydbms16;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> hire_date date
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,hire_date)
    -> values
    -> (1001,'Ram','Sharma','1987-07-15'),
    -> (1002,'Shyam','Sharma','1986-06-20'),
    -> (1003,'Hardik','Jaiswal','1987-05-10'),
    -> (1004,'Harkirat','Saluja','1988-04-25'),
    -> (1005,'Darshan','Jain','1987-03-05');
Query OK, 5 rows affected
Records: 5  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,hire_date
    -> from employees
    -> where year(hire_date) = 1987;
+------------+-------------+------------+
| first_name | last_name   | hire_date  |
+------------+-------------+------------+
| Ram        | Sharma      | 1987-07-15 |
| Hardik     | Jaiswal     | 1987-05-10 |
| Darshan    | Jain        | 1987-03-05 |
+------------+-------------+------------+
3 rows in set
