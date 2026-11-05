mysql> create database Mydbms17;
Query OK, 1 row affected

mysql> use Mydbms17;
Database changed

mysql> create table employees (
    -> employee_id int primary key,
    -> last_name varchar(30),
    -> job varchar(30),
    -> salary decimal(10,2)
    -> );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,last_name,job,salary)
    -> values
    -> (1001,'Sharma','Programmer',4000),
    -> (1002,'Sharma','Programmer',4500),
    -> (1003,'Jaiswal','Shipping Clerk',7000),
    -> (1004,'Saluja','Shipping Clerk',10000),
    -> (1005,'Jain','Programmer',12000),
    -> (1006,'Sharma','Shipping Clerk',15000),
    -> (1007,'Gupta','Programmer',18000);
Query OK, 7 rows affected
Records: 7  Duplicates: 0  Warnings: 0

mysql> select last_name,job,salary
    -> from employees
    -> where job in ('Programmer','Shipping Clerk')
    -> and salary not in (4500,10000,15000);
+-------------+----------------+----------+
| last_name   | job            | salary   |
+-------------+----------------+----------+
| Sharma      | Programmer     |  4000.00 |
| Jaiswal     | Shipping Clerk |  7000.00 |
| Jain        | Programmer     | 12000.00 |
| Gupta       | Programmer     | 18000.00 |
+-------------+----------------+----------+
4 rows in set
