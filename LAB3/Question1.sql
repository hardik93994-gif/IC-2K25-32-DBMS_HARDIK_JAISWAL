mysql> create database Mydbms13;
Query OK, 1 row affected

mysql> use Mydbms13;
Database changed

mysql> create table employees (employee_id int primary key,first_name varchar(30),last_name varchar(30),salary decimal(10,2) );
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,salary)values(1001,'Ram','Sharma',9000),(1002,'Shyam','Sharma',12000),(1003,'Darshan','Jain',15000),(1004,'Hardik','Jaiswal',18000),(1005,'Harkirat','Saluja',25000);
Query OK, 5 rows affected
Records: 5  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,salary
    -> from employees
    -> where salary not between 10000 and 15000;
+------------+-------------+----------+
| first_name | last_name   | salary   |
+------------+-------------+----------+
| Ram        | Sharma      |  9000.00 |
| Hardik     | Jaiswal     | 18000.00 |
| Harkirat   | Saluja      | 25000.00 |
+------------+-------------+----------+
3 rows in set
