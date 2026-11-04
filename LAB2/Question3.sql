mysql> use MydbmsX;
Database changed

mysql> create table employees (
    -> first_name varchar(30),
    -> last_name varchar(30),
    -> department_id int
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees(first_name,last_name,department_id)
    -> values('Ram','Sharma',1),('Shyam','Sharma',2),('Hardik','Jaiswal',1),('Harkirat','Saluja',3),('Darshan','Jain',2);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employees order by first_name desc;
+------------+-------------+---------------+
| first_name | last_name   | department_id |
+------------+-------------+---------------+
| Darshan    | Jain        |            2  |
| Harkirat   | Saluja      |            3  |
| Hardik     | Jaiswal     |            1  |
| Shyam      | Sharma      |            2  |
| Ram        | Sharma      |            1  |
+------------+-------------+---------------+
5 rows in set (0.00 sec)

mysql>
