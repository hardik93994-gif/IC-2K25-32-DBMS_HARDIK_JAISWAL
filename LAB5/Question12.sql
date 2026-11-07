mysql> CREATE DATABASE Mydbms46;
Query OK, 1 row affected

mysql> USE Mydbms46;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> manager_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (1001, 'Ram', 'Sharma', NULL),
    -> (1002, 'Shyam', 'Sharma', 101),
    -> (1003, 'Hardik', 'Jaiswal', 102),
    -> (1004, 'Harkirat', 'Saluja', 102),
    -> (1005, 'Darshan', 'Jain', 101),
    -> (1006, 'Rohan', 'Sharma', 103);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE employee_id NOT IN (
    ->     SELECT DISTINCT manager_id
    ->     FROM employees
    ->     WHERE manager_id IS NOT NULL
    -> );
