mysql> CREATE DATABASE Mydbms41;
Query OK, 1 row affected

mysql> USE Mydbms41;
Database changed

mysql> CREATE TABLE departments (
    -> department_id INT PRIMARY KEY,
    -> department_name VARCHAR(50)
    -> );
Query OK, 0 rows affected

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> salary DECIMAL(10,2),
    -> department_id INT
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO departments VALUES
    -> (10, 'IT'),
    -> (20, 'Sales'),
    -> (30, 'IT Support');
Query OK, 3 rows affected

mysql> INSERT INTO employees VALUES
    -> (1001, 'Ram', 'Sharma', 30000, 10),
    -> (1002, 'Shyam', 'Sharma', 50000, 10),
    -> (1003, 'Hardik', 'Jaiswal', 60000, 20),
    -> (1004, 'Harkirat', 'Saluja', 50000, 30),
    -> (1005, 'Darshan', 'Jain', 25000, 20),
    -> (1006, 'Rohan', 'Sharma', 45000, 10);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> )
    -> AND department_id IN (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE department_name LIKE 'IT%'
    -> );
