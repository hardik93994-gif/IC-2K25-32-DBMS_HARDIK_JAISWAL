mysql> CREATE DATABASE Mydbms51;
Query OK, 1 row affected

mysql> USE Mydbms51;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (1001, 'Ram', 'Sharma', 50000),
    -> (1002, 'Shyam', 'Sharma', 45000),
    -> (1003, 'Hardik', 'Jaiswal', 40000),
    -> (1004, 'Harkirat', 'Saluja', 35000),
    -> (1005, 'Darshan', 'Jain', 30000),
    -> (1006, 'Rohan', 'Sharma', 25000);
Query OK, 6 rows affected

mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary ASC
    -> LIMIT 1 OFFSET 3;
