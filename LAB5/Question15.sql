mysql> CREATE DATABASE Mydbms49;
Query OK, 1 row affected

mysql> USE Mydbms49;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (10, 'Ram', 'Sharma', 30000),
    -> (20, 'Shyam', 'Sharma', 40000),
    -> (30, 'Hardik', 'Jaiswal', 50000),
    -> (40, 'Harkirat', 'Saluja', 35000),
    -> (50, 'Darshan', 'Jain', 45000),
    -> (60, 'Rohan', 'Sharma', 25000);
Query OK, 6 rows affected

mysql> SELECT *
    -> FROM employees
    -> WHERE MOD(employee_id, 2) = 0;
