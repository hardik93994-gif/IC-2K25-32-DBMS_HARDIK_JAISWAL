mysql> create database jobdbms;
Query OK, 1 row affected (0.02 sec)

mysql> use jobdbms;
Database changed
mysql> create table jobs{
   
job_title VARCHAR(50),
min_salary DECIMAL(10,2),
max_salary DECIMA' at line 1
mysql> CREATE TABLE jobs (
    ->     job_id INT,
    ->     job_title VARCHAR(50),
    ->     min_salary DECIMAL(10,2),
    ->     max_salary DECIMAL(10,2),
    ->     CHECK (max_salary <= 25000)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> insert into jobs VALUES(1,'Manager',15000,24000);
Query OK, 1 row affected (0.03 sec)

mysql> desc jobs;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| job_id     | int           | YES  |     | NULL    |       |
| job_title  | varchar(50)   | YES  |     | NULL    |       |
| min_salary | decimal(10,2) | YES  |     | NULL    |       |
| max_salary | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

mysql>
