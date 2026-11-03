mysql> use jobhistorydbms;
Database changed
mysql> create table job_histry(
    -> employee_id INT,
    -> start_date DATE,
    -> end_date DATE,
    -> job_id VARCHAR(10),
    -> department_id INT
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into job_histry
    -> (employee_id,start_date,end_date,job_id,department_id)
    -> VALUES
    -> (101,'2026-01-10',str_to_date('18/08/2026','%d/%m/%Y'),'IT_PROG',10);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT employee_id, start_date,
    ->        DATE_FORMAT(end_date, '%d/%m/%Y') AS end_date,
    ->        job_id, department_id
    -> FROM job_histry;
+-------------+------------+------------+---------+---------------+
| employee_id | start_date | end_date   | job_id  | department_id |
+-------------+------------+------------+---------+---------------+
|         101 | 2026-01-10 | 18/08/2026 | IT_PROG |            10 |
+-------------+------------+------------+---------+---------------+
1 row in set (0.00 sec)
mysql>
