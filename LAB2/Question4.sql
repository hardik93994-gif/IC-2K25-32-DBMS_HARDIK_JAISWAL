mysql> use MydbmsX;
Database changed

mysql> create table employees (first_name varchar(30),last_name varchar(30),salary decimal(10,2));
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(first_name,last_name,salary)
    -> values('Ram','Sharma',30000),('Shyam','Sharma',40000),('Hardik','Jaiswal',100000),('Harkirat','saluja',50000);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select first_name, last_name, salary, salary * 15 / 100 as PF
      from employees;
+------------+-------------+----------+---------+
| first_name | last_name   | salary   | PF      |
+------------+-------------+----------+---------+
| Ram        | Sharma      | 30000.00 | 4500.00 |
| Shyam      | Sharma      | 40000.00 | 6000.00 |
| Hardik     | Jaiswal     | 100000.00| 15000.00|
| Harkirat   | Saluja      | 50000.00 | 7500.00 |
+------------+-------------+----------+---------+
4 rows in set (0.00 sec)

mysql>
