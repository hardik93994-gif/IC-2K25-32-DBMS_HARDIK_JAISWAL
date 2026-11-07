mysql> CREATE DATABASE Mydbms44;
Query OK, 1 row affected

mysql> USE Mydbms44;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2),
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (1001, 'Ram', 'Sharma', 30000, 10),
    -> (1002, 'Shyam', 'Sharma', 40000, 10),
    -> (1003, 'Hardik', 'Jaiswal', 50000, 20),
    -> (1004, 'Harkirat', 'Saluja', 25000, 30),
    -> (1005, 'Darshan', 'Jain', 45000, 20),
    -> (1006, 'Rohan', 'Sharma', 35000, 30);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> );
