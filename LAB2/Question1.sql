mysql> use Mydbms;
Database changed

mysql> create table employees (first_name varchar(30),last_name varchar(30));
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(first_name,last_name)
    -> values('Ram','Sharma'),('Shyam','Sharma'),('Hardik','Jaiswal'),('Harkirat','Saluja');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select first_name as `First Name`, last_name as `Last Name` from employees;
+------------+-------------+
| First Name | Last Name   |
+------------+-------------+
| Ram        | Sharma      |
| Shyam      | Sharma      |
| Hardik     | Jaiswal     |
| Harkirat   | Saluja      |
+------------+-------------+
4 rows in set (0.00 sec)

mysql>
