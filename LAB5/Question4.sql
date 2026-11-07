mysql> CREATE DATABASE Mydbms38;
Query OK, 1 row affected

mysql> USE Mydbms38;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> manager_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (10, 'Ram', 'Sharma', NULL),
    -> (11, 'Neena', 'Kochhar', 100),
    -> (12, 'Shyam', 'Sharma', 100),
    -> (13, 'Alexander', 'Hunold', 102),
    -> (14, 'Darshan', 'Jain', 103),
    -> (15, 'David', 'Austin', 103),
    -> (16, 'Nancy', 'Greenberg', 101);
Query OK, 7 rows affected

mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE employee_id IN (
    ->     SELECT DISTINCT manager_id
    ->     FROM employees
    ->     WHERE manager_id IS NOT NULL
    -> );
