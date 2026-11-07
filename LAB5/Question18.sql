mysql> CREATE DATABASE Mydbms56;
Query OK, 1 row affected

mysql> USE Mydbms56;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected
mysql> INSERT INTO employees VALUES
    -> (10, 'Ram', 20000),
    -> (20, 'Shyam', 22000),
    -> (30, 'Hardik', 24000),
    -> (40, 'Harkirat', 26000),
    -> (50, 'Darshan', 28000),
    -> (60, 'Rohan', 30000),
    -> (70, 'Reet', 32000),
    -> (80, 'Rohit', 34000),
    -> (90, 'Nitin', 36000),
    -> (100, 'Aman', 38000),
    -> (110, 'Karan', 40000),
    -> (120, 'Ankit', 42000);
Query OK, 12 rows affected
mysql> SELECT *
    -> FROM employees
    -> ORDER BY employee_id DESC
    -> LIMIT 10;
+-------------+---------------+----------+
| employee_id | employee_name | salary   |
+-------------+---------------+----------+
|         120 | Ankit         | 42000.00 |
|         110 | Karan         | 40000.00 |
|         100 | Aman          | 38000.00 |
|          90 | Nitin         | 36000.00 |
|          80 | Rohit         | 34000.00 |
|          70 | Reet          | 32000.00 |
|          60 | Rohan         | 30000.00 |
|          50 | Darshan       | 28000.00 |
|          40 | Harkirat      | 26000.00 |
|          30 | Hardik        | 24000.00 |
+-------------+---------------+----------+
10 rows in set
