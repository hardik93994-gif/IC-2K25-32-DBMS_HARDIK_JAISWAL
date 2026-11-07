mysql> CREATE DATABASE Mydbms42;
Query OK, 1 row affected

mysql> USE Mydbms42;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (1001, 'Ram', 'Sharma', 30000),
    -> (1002, 'Shyam', 'Sharma', 40000),
    -> (1003, 'Hardik', 'Jaiswal', 50000),
    -> (1004, 'Harkirat', 'Saluja', 35000),
    -> (1005, 'Richard', 'Bell', 45000),
    -> (1006, 'Rahul', 'Sharma', 25000);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE last_name = 'Bell'
    -> );
