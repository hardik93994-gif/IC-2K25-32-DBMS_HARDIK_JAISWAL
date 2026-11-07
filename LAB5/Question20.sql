mysql> CREATE DATABASE Mydbms58;
Query OK, 1 row affected

mysql> USE Mydbms58;
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
    -> (40, 'Badal', 40000),
    -> (50, 'Darshan', 35000),
    -> (60, 'Rohan', 50000);
Query OK, 6 rows affected
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary DESC
    -> LIMIT 3;
+----------+
| salary   |
+----------+
| 50000.00 |
| 45000.00 |
| 40000.00 |
+----------+
3 rows in set
