mysql> CREATE DATABASE Mydbms40;
Query OK, 1 row affected

mysql> USE Mydbms40;
Database changed

mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name VARCHAR(30),
    -> last_name VARCHAR(30),
    -> job_id VARCHAR(20),
    -> salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected

mysql> INSERT INTO employees VALUES
    -> (101, 'Ram', 'Sharma', 'IT_PROG', 30000),
    -> (102, 'Shyam', 'Sharma', 'IT_PROG', 25000),
    -> (103, 'Hardik', 'Jaiswal', 'IT_PROG',50000),
    -> (104, 'Harkirat', 'Saluja', 'SA_REP', 40000),
    -> (105, 'Darshan', 'Jain', 'SA_REP', 30000),
    -> (106, 'Rohan', 'Sharma', 'SA_REP', 45000);
Query OK, 6 rows affected

mysql> SELECT first_name, last_name, salary
    -> FROM employees e
    -> WHERE salary = (
    ->     SELECT MIN(salary)
    ->     FROM employees
    ->     WHERE job_id = e.job_id
    -> );
