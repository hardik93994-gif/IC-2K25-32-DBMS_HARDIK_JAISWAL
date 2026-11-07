mysql> CREATE DATABASE Mydbms59;
Query OK, 1 row affected

mysql> USE Mydbms59;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO employees VALUES
    -> (10, 'Ram', 25000),
    -> (20, 'Shyam', 30000),
    -> (30, 'Hardik', 45000),
    -> (40, 'Harkirat', 40000),
    -> (50, 'Darshan', 35000),
    -> (60, 'Rohan', 20000);
Query OK, 6 rows affected
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary ASC
    -> LIMIT 3;
+----------+
| salary   |
+----------+
| 20000.00 |
| 25000.00 |
| 30000.00 |
+----------+
3 rows in set
