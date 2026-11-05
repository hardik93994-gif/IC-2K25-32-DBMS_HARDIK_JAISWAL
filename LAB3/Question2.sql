mysql> create database Mydbms14;
Query OK, 1 row affected

mysql> use Mydbms14;
Database changed

mysql> create table employees (employee_id int primary key,first_name varchar(30),last_name varchar(30),department_id int);
Query OK, 0 rows affected

mysql> insert into employees(employee_id,first_name,last_name,department_id)values(1001,'Ram','Sharma',30),(1002,'Shyam','Sharma',20),(1003,'Hardik','Jaiswal',100),(1004,'Harkirat','Saluja',30),(1005,'Darshan','Jain',50),(1006,'Rohan','Sharma',100);
Query OK, 6 rows affected
Records: 6  Duplicates: 0  Warnings: 0

mysql> select first_name,last_name,department_id
    -> from employees
    -> where department_id in (30,100)
    -> order by department_id asc;
+------------+-------------+---------------+
| first_name | last_name   | department_id |
+------------+-------------+---------------+
| Ram        | Sharma      |            30 |
| Harkirat   | Saluja      |            30 |
| Hardik     | Jaiswal     |           100 |
| Rohan      | Sharma      |           100 |
+------------+-------------+---------------+
4 rows in set
